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

import '../commands.dart' show ServerVersionCheck, VectorSetCommands;

extension VRangeCommand on VectorSetCommands {
  /// VRANGE key vector radius [metric]
  ///
  /// Performs a range query (search within radius).
  ///
  /// [key]: The key of the vector set.
  /// [vector]: The query vector.
  /// [radius]: The search radius.
  /// [metric]: Optional distance metric (e.g., 'L2', 'IP', 'COSINE').
  /// [forceRun]: Force execution on Valkey.
  Future<dynamic> vRange(
    String key,
    List<num> vector,
    num radius, {
    String? metric,
    bool forceRun = false,
  }) async {
    await checkValkeySupport('VRANGE', forceRun: forceRun);

    final cmd = <dynamic>['VRANGE', key, ...vector, radius];

    if (metric != null) {
      cmd.add(metric);
    }

    return execute(cmd);
  }
}
