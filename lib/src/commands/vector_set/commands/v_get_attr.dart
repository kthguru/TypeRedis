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

extension VGetAttrCommand on VectorSetCommands {
  /// VGETATTR key id attribute
  ///
  /// Retrieves a specific attribute of a vector.
  ///
  /// [key]: The key of the vector set.
  /// [id]: The vector ID.
  /// [attribute]: The name of the attribute to retrieve.
  /// [forceRun]: Force execution on Valkey.
  Future<dynamic> vGetAttr(
    String key,
    String id,
    String attribute, {
    bool forceRun = false,
  }) async {
    await checkValkeySupport('VGETATTR', forceRun: forceRun);
    return execute(['VGETATTR', key, id, attribute]);
  }
}
