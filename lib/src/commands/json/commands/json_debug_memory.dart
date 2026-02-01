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

import '../commands.dart' show JsonCommands;

extension JsonDebugMemoryCommand on JsonCommands {
  /// JSON.DEBUG MEMORY `<key>` [path]
  ///
  /// Report memory usage in bytes of a JSON value.
  /// Path defaults to the root if not provided.
  ///
  /// [key] The key to check.
  /// [path] The JSON path.
  ///
  /// Return value depends on the path syntax used:
  ///
  /// 1. Restricted syntax (default, or starts with '.'):
  ///    - Returns [int]: Memory size of the JSON value in bytes.
  ///    - Returns [`null`]: If the key does not exist.
  ///
  /// 2. Enhanced syntax (starts with '$'):
  ///    - Returns [List<int>]: Array of integers representing memory size at
  ///      each path.
  ///    - Returns [List] (empty): If the key does not exist.
  ///
  /// Complexity: O(1)
  ///
  /// Report memory size (bytes).
  /// - Without [path]: reports document size without keys (returns int).
  /// - With [path]: reports size including keys (returns int or `List<int>`).
  ///
  /// Returns the memory usage in bytes (integer).
  /// Returns a List of integers if path matches multiple values.
  ///
  /// Returns the memory size in bytes.
  Future<dynamic> jsonDebugMemory({
    required String key,
    String? path,
  }) async {
    final cmd = <String>['JSON.DEBUG', 'MEMORY', key];
    if (path != null) {
      cmd.add(path);
    }
    // Must use 'execute' because the return type varies (int, null, or List)
    // depending on whether Restricted or Enhanced path syntax is used.
    return execute(cmd);
  }
}
