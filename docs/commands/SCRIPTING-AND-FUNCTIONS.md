<!--
Copyright 2025-2026 Infradise Inc.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

     http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
-->

# SCRIPTING AND FUNCTIONS

| keyscope_client   | Redis                                                                       | Valkey                                                           | Google Memorystore |
|-------------------|-----------------------------------------------------------------------------|------------------------------------------------------------------|--------------------|
| `eval`            | [EVAL](https://redis.io/docs/latest/commands/eval/)                         | [EVAL](https://valkey.io/commands/eval/)                         | yes |
| `evalSha`         | [EVALSHA](https://redis.io/docs/latest/commands/evalsha/)                   | [EVALSHA](https://valkey.io/commands/evalsha/)                   | yes |
| `evalShaRo`       | [EVALSHA_RO](https://redis.io/docs/latest/commands/evalsha-ro/)             | [EVALSHA_RO](https://valkey.io/commands/evalsha-ro/)             | yes |
| `evalRo`          | [EVAL_RO](https://redis.io/docs/latest/commands/eval-ro/)                   | [EVAL_RO](https://valkey.io/commands/eval-ro/)                   | yes |
| `fCall`           | [FCALL](https://redis.io/docs/latest/commands/fcall/)                       | [FCALL](https://valkey.io/commands/fcall/)                       | yes |
| `fCallRo`         | [FCALL_RO](https://redis.io/docs/latest/commands/fcall-ro/)                 | [FCALL_RO](https://valkey.io/commands/fcall-ro/)                 | yes |
| `function`        | [FUNCTION](https://redis.io/docs/latest/commands/function/)                 | [FUNCTION](https://valkey.io/commands/function/)                 | |
| `functionDelete`  | [FUNCTION DELETE](https://redis.io/docs/latest/commands/function-delete/)   | [FUNCTION DELETE](https://valkey.io/commands/function-delete/)   | yes |
| `functionDump`    | [FUNCTION DUMP](https://redis.io/docs/latest/commands/function-dump/)       | [FUNCTION DUMP](https://valkey.io/commands/function-dump/)       | yes |
| `functionFlush`   | [FUNCTION FLUSH](https://redis.io/docs/latest/commands/function-flush/)     | [FUNCTION FLUSH](https://valkey.io/commands/function-flush/)     | yes |
| `functionHelp`    | [FUNCTION HELP](https://redis.io/docs/latest/commands/function-help/)       | [FUNCTION HELP](https://valkey.io/commands/function-help/)       | yes |
| `functionKill`    | [FUNCTION KILL](https://redis.io/docs/latest/commands/function-kill/)       | [FUNCTION KILL](https://valkey.io/commands/function-kill/)       | yes |
| `functionList`    | [FUNCTION LIST](https://redis.io/docs/latest/commands/function-list/)       | [FUNCTION LIST](https://valkey.io/commands/function-list/)       | yes |
| `functionLoad`    | [FUNCTION LOAD](https://redis.io/docs/latest/commands/function-load/)       | [FUNCTION LOAD](https://valkey.io/commands/function-load/)       | yes |
| `functionRestore` | [FUNCTION RESTORE](https://redis.io/docs/latest/commands/function-restore/) | [FUNCTION RESTORE](https://valkey.io/commands/function-restore/) | yes |
| `functionStats`   | [FUNCTION STATS](https://redis.io/docs/latest/commands/function-stats/)     | [FUNCTION STATS](https://valkey.io/commands/function-stats/)     | yes |
| `script`          | [SCRIPT](https://redis.io/docs/latest/commands/script/)                     | [SCRIPT](https://valkey.io/commands/script/)                     | |
| `scriptDebug`     | [SCRIPT DEBUG](https://redis.io/docs/latest/commands/script-debug/)         | [SCRIPT DEBUG](https://valkey.io/commands/script-debug/)         | yes |
| `scriptExists`    | [SCRIPT EXISTS](https://redis.io/docs/latest/commands/script-exists/)       | [SCRIPT EXISTS](https://valkey.io/commands/script-exists/)       | yes |
| `scriptFlush`     | [SCRIPT FLUSH](https://redis.io/docs/latest/commands/script-flush/)         | [SCRIPT FLUSH](https://valkey.io/commands/script-flush/)         | yes |
| `scriptHelp`      | [SCRIPT HELP](https://redis.io/docs/latest/commands/script-help/)           | [SCRIPT HELP](https://valkey.io/commands/script-help/)           | yes |
| `scriptKill`      | [SCRIPT KILL](https://redis.io/docs/latest/commands/script-kill/)           | [SCRIPT KILL](https://valkey.io/commands/script-kill/)           | yes |
| `scriptLoad`      | [SCRIPT LOAD](https://redis.io/docs/latest/commands/script-load/)           | [SCRIPT LOAD](https://valkey.io/commands/script-load/)           | yes |
| `scriptShow`      | [SCRIPT SHOW](https://redis.io/docs/latest/commands/script-show/)           | [SCRIPT SHOW](https://valkey.io/commands/script-show/)           | |