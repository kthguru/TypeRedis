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

extension VRemCommand on VectorSetCommands {
  /// VREM key id
  ///
  /// Removes a vector from the set by ID.
  ///
  /// [key]: The key of the vector set.
  /// [id]: The ID of the vector to remove.
  /// [forceRun]: Force execution on Valkey.
  Future<int> vRem(
    String key,
    String id, {
    bool forceRun = false,
  }) async {
    await checkValkeySupport('VREM', forceRun: forceRun);
    return executeInt(['VREM', key, id]);
  }
}
