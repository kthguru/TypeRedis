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

extension VAddCommand on VectorSetCommands {
  /// VADD key vector [ID id]
  ///
  /// Adds a vector to the set.
  ///
  /// [key]: The key of the vector set.
  /// [vector]: The vector data (list of numbers).
  /// [id]: Optional explicit ID for the vector.
  /// [forceRun]: Force execution on Valkey.
  Future<dynamic> vAdd(
    String key,
    List<num> vector, {
    String? id,
    bool forceRun = false,
  }) async {
    await checkValkeySupport('VADD', forceRun: forceRun);

    final cmd = <dynamic>['VADD', key, ...vector];

    if (id != null) {
      cmd.addAll(['ID', id]);
    }

    return execute(cmd);
  }
}
