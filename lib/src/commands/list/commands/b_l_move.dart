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

import '../commands.dart' show ListCommands;

extension BLMoveCommand on ListCommands {
  /// BLMOVE source destination `<LEFT | RIGHT>` `<LEFT | RIGHT>` timeout
  ///
  /// Atomically returns and removes the first/last element (head/tail) of the list stored at [source],
  /// and pushes the element at the first/last element (head/tail) of the list stored at [destination].
  /// If the [source] list is empty, the client blocks until another client
  /// pushes to it or until [timeout] is reached.
  ///
  /// [whereFrom] and [whereTo] must be either 'LEFT' or 'RIGHT'.
  /// [timeout] is in seconds. A timeout of 0 can be used to block indefinitely.
  ///
  /// Complexity: O(1)
  ///
  /// Returns:
  /// - The element being popped and pushed.
  /// - [`null`] if the timeout is reached.
  Future<String?> bLMove(
    String source,
    String destination,
    String whereFrom,
    String whereTo,
    double timeout,
  ) async {
    final cmd = <String>[
      'BLMOVE',
      source,
      destination,
      whereFrom,
      whereTo,
      timeout.toString()
    ];
    final result = await execute(cmd);
    return result as String?;
  }
}
