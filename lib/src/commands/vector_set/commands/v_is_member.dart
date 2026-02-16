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

extension VIsMemberCommand on VectorSetCommands {
  /// VISMEMBER key id
  ///
  /// Checks if an ID exists in the vector set.
  ///
  /// [key]: The key of the vector set.
  /// [id]: The ID to check.
  /// [forceRun]: Force execution on Valkey.
  Future<bool> vIsMember(
    String key,
    String id, {
    bool forceRun = false,
  }) async {
    await checkValkeySupport('VISMEMBER', forceRun: forceRun);
    final result = await executeInt(['VISMEMBER', key, id]);
    return result == 1;
  }
}
