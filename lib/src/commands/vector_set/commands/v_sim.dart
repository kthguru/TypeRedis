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

extension VSimCommand on VectorSetCommands {
  /// VSIM key id vector [metric]
  /// OR
  /// VSIM key id1 id2 [metric]
  ///
  /// Calculates similarity between vectors.
  ///
  /// [key]: The key of the vector set.
  /// [id]: The base vector ID.
  /// [compareId]: An ID to compare against.
  /// [compareVector]: A raw vector to compare against (mutually exclusive
  ///                  with [compareId]).
  /// [metric]: Optional metric override.
  /// [forceRun]: Force execution on Valkey.
  Future<double> vSim(
    String key,
    String id, {
    String? compareId,
    List<num>? compareVector,
    String? metric,
    bool forceRun = false,
  }) async {
    await checkValkeySupport('VSIM', forceRun: forceRun);

    final cmd = <dynamic>['VSIM', key, id];

    if (compareId != null) {
      cmd.add(compareId);
    } else if (compareVector != null) {
      cmd.addAll(compareVector);
    } else {
      throw ArgumentError(
          'Either compareId or compareVector must be provided.');
    }

    if (metric != null) {
      cmd.add(metric);
    }

    final result = await execute(cmd);
    return double.parse(result.toString());
  }
}
