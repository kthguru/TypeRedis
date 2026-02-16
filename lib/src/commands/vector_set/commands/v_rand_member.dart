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

extension VRandMemberCommand on VectorSetCommands {
  /// VRANDMEMBER key [count]
  ///
  /// Returns one or more random member IDs from the set.
  ///
  /// [key]: The key of the vector set.
  /// [count]: Optional number of members to return.
  /// [forceRun]: Force execution on Valkey.
  Future<dynamic> vRandMember(
    String key, {
    int? count,
    bool forceRun = false,
  }) async {
    await checkValkeySupport('VRANDMEMBER', forceRun: forceRun);

    final cmd = <dynamic>['VRANDMEMBER', key];
    if (count != null) {
      cmd.add(count);
    }

    return execute(cmd);
  }
}
