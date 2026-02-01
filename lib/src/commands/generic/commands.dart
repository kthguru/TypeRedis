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

export 'extensions.dart';

mixin GenericCommands {
  // [Interface Definition]
  // The class using this mixin must implement these methods and getters.

  /// Sends a command to the server.
  /// The interface for sending commands to the Redis/Valkey server.
  Future<dynamic> execute(List<String> command);

  /// Checks if the connected server is Redis.
  Future<bool> isRedisServer();

  /// Checks if the connected server is Valkey.
  Future<bool> isValkeyServer();

  /// Helper to execute a command that is expected to return an Integer.
  ///
  /// Useful for commands like HDEL, HLEN, HINCRBY, etc.
  /// Handles type casting and parsing safely.
  Future<int> executeInt(List<String> command) async {
    final result = await execute(command);

    if (result is int) return result;
    if (result == null) return 0; // or throw depending on strictness

    // Sometimes servers might return integer-like strings
    if (result is String) {
      return int.tryParse(result) ?? 0;
    }

    throw Exception('Expected integer response but got ${result.runtimeType}');
  }
}
