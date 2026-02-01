/*
 * Copyright 2025-2026 Infradise Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import 'package:test/test.dart';
import 'package:valkey_client/valkey_client.dart';

void main() {
  group('JSON.DEBUG Commands', () {
    late ValkeyClient client;

    setUp(() async {
      client = ValkeyClient(host: 'localhost', port: 6379);
      await client.connect();
      // await client.flushAll(); // TODO: add flushAll()
      await client.execute(['FLUSHALL']);

      // Setup: Complex JSON data for testing
      const key = 'test:debug:data';
      const data = '{'
          '"name": "Product A", '
          '"tags": ["new", "sale", "featured"], '
          '"details": {"weight": 100, "dims": [10, 20, 30]}, '
          '"history": [{"date": "2023-01-01", "action": "created"}] '
          '}';
      await client.jsonSet(key: key, path: r'$', data: data);
    });

    tearDown(() async {
      await client.close(); // disconnect
    });

    test('JSON.DEBUG MEMORY - handles int and List return types', () async {
      const key = 'test:debug:data';

      // 1. Without path -> Returns int (Total size)
      final totalMemory = await client.jsonDebugMemory(key: key);
      expect(totalMemory, isA<int>());
      expect(totalMemory, greaterThan(0));

      // 2. With path (Recursive) -> Returns List (Size of matching elements)
      final elementMemory =
          await client.jsonDebugMemory(key: key, path: r'$..*');
      expect(elementMemory, isA<List>());
      expect((elementMemory as List).isNotEmpty, isTrue);
    });

    test('JSON.DEBUG FIELDS - handles int and List return types', () async {
      const key = 'test:debug:data';

      // 1. Without path -> Returns int (Total recursive fields count)
      final rootFields = await client.jsonDebugFields(key: key);

      // {
      //   "name": "Product A",
      //   "tags": ["new", "sale", "featured"],
      //   "details": {
      //     "weight": 100,
      //     "dims": [10, 20, 30]
      //   },
      //   "history": [{"date": "2026-02-01", "action": "created"}]
      // }

      expect(rootFields, isA<int>());

      // Breakdown of the count (Total 15) based on Spec:
      // "Each container value, except the root container, counts as one
      //  additional field."
      //
      // 1. name: 1 (Primitive)
      // 2. tags: 4 (Array itself=1 + 3 elements)
      // 3. details: 6 (Object itself=1 + weight=1 + dims(Array=1 + 3 elements))
      // 4. history: 4 (Array itself=1 + Object(Self=1 + date=1 + action=1))
      // Total: 1 + 4 + 6 + 4 = 15
      //
      expect(rootFields, equals(15));
      //
      // - Root keys: 4 (name, tags, details, history)
      // - tags elements: 3
      // - details keys: 2 (weight, dims)
      // - dims elements: 3
      // - history elements: 1
      // - history[0] keys: 2 (date, action)

      // 2. With path -> Returns List (Fields count for matches)
      final detailsFields =
          await client.jsonDebugFields(key: key, path: r'$.details');
      expect(detailsFields, isA<List>());

      // Details breakdown (Total 6):
      // - The Object itself doesn't count as it's the root of this query?
      // - Wait, checking Valkey logic: returns count of fields *at* the path.
      // - Unlike root, counting a specific path includes its subtree.
      // - details: 1 (weight) + 4 (dims: self=1 + 3 elements) = 5?
      // - Let's re-verify with spec: "Objects and arrays recursively count..."
      // - If path points to 'details', it sums children.
      // - weight(1) + dims(4) = 5.
      expect((detailsFields as List).first, equals(5)); // 2 or 5

      // details object has:
      // - keys: 2 (weight, dims)
      // - dims elements: 3
      // Total: 5
    });

    test('JSON.DEBUG DEPTH', () async {
      const key = 'test:debug:data';
      final depth = await client.jsonDebugDepth(key: key);
      expect(depth, isA<int>());
      // Root -> details -> dims -> value (Depth: 3 or 4 depending on counting)
      expect(depth, greaterThan(1));
    });

    test('JSON.DEBUG HELP', () async {
      final help = await client.jsonDebugHelp();
      expect(help, isNotEmpty);
      expect(help, contains(contains('MEMORY')));
    });

    test('JSON.DEBUG Dangerous Commands (Smoke Test)', () async {
      // These print "DANGER..." to console.
      // We just check if the command is sent successfully without client-side
      // error.

      // Note: Some of these might return 'nil' or specific internal structures
      // depending on the server state, so we just check the call completes.

      await expectLater(client.jsonDebugMaxDepthKey(), completes);
      await expectLater(client.jsonDebugMaxSizeKey(), completes);

      // For now, we don't test KEYTABLE-CORRUPT to avoid breaking the test
      // server state intentionally.
    });
  });
}
