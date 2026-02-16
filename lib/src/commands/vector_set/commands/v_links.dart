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

extension VLinksCommand on VectorSetCommands {
  /// VLINKS key id
  ///
  /// Returns the links (connectivity) of a node in the index (HNSW context).
  ///
  /// [key]: The key of the vector set.
  /// [id]: The vector ID.
  /// [forceRun]: Force execution on Valkey.
  Future<dynamic> vLinks(
    String key,
    String id, {
    bool forceRun = false,
  }) async {
    await checkValkeySupport('VLINKS', forceRun: forceRun);
    return execute(['VLINKS', key, id]);
  }
}
