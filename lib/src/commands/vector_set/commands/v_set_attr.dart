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

extension VSetAttrCommand on VectorSetCommands {
  /// VSETATTR key id attribute value
  ///
  /// Sets or updates an attribute for a vector.
  ///
  /// [key]: The key of the vector set.
  /// [id]: The vector ID.
  /// [attribute]: The attribute name.
  /// [value]: The value to set.
  /// [forceRun]: Force execution on Valkey.
  Future<dynamic> vSetAttr(
    String key,
    String id,
    String attribute,
    dynamic value, {
    bool forceRun = false,
  }) async {
    await checkValkeySupport('VSETATTR', forceRun: forceRun);
    return execute(['VSETATTR', key, id, attribute, value]);
  }
}
