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

mixin ListCommands {
  /// Abstract method to execute a command.
  Future<dynamic> execute(List<String> command);

  /// Checks if the connected server is Redis.
  Future<bool> isRedisServer();

  /// Checks if the connected server is Valkey.
  Future<bool> isValkeyServer();

  /// Helper to execute a command expecting an Integer reply.
  /// Throws an exception if the result is not an integer.
  Future<int> executeInt(List<String> command) async {
    final result = await execute(command);
    if (result is int) {
      return result;
    }
    throw Exception(
        'Expected integer response but got ${result.runtimeType}: $result');
  }

  /// Helper to execute a command expecting a String reply (e.g., "OK").
  /// Throws an exception if the result is not a string.
  Future<String> executeString(List<String> command) async {
    final result = await execute(command);
    if (result is String) {
      return result;
    }
    throw Exception(
        'Expected string response but got ${result.runtimeType}: $result');
  }
}
