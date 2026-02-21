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

# STRING

| keyscope_client | Redis                                                             | Valkey                                                 | Google Memorystore |
|-----------------|-------------------------------------------------------------------|--------------------------------------------------------|--------------------|
| `append`        | [APPEND](https://redis.io/docs/latest/commands/append/)           | [APPEND](https://valkey.io/commands/append/)           | yes |
| `decr`          | [DECR](https://redis.io/docs/latest/commands/decr/)               | [DECR](https://valkey.io/commands/decr/)               | yes |
| `decrBy`        | [DECRBY](https://redis.io/docs/latest/commands/decrby/)           | [DECRBY](https://valkey.io/commands/decrby/)           | yes |
| `delEx`         | [DELEX](https://redis.io/docs/latest/commands/delex/)             |                                                        | |
| `delIfEq`       |                                                                   | [DELIFEQ](https://valkey.io/commands/delifeq/)         | |
| `digest`        | [DIGEST](https://redis.io/docs/latest/commands/digest/)           |                                                        | |
| `get`           | [GET](https://redis.io/docs/latest/commands/get/)                 | [GET](https://valkey.io/commands/get/)                 | yes |
| `getDel`        | [GETDEL](https://redis.io/docs/latest/commands/getdel/)           | [GETDEL](https://valkey.io/commands/getdel/)           | yes |
| `getEx`         | [GETEX](https://redis.io/docs/latest/commands/getex/)             | [GETEX](https://valkey.io/commands/getex/)             | yes |
| `getRange`      | [GETRANGE](https://redis.io/docs/latest/commands/getrange/)       | [GETRANGE](https://valkey.io/commands/getrange/)       | yes |
| `getSet`        | [GETSET](https://redis.io/docs/latest/commands/getset/)           | [GETSET](https://valkey.io/commands/getset/)           | yes |
| `incr`          | [INCR](https://redis.io/docs/latest/commands/incr/)               | [INCR](https://valkey.io/commands/incr/)               | yes |
| `incrBy`        | [INCRBY](https://redis.io/docs/latest/commands/incrby/)           | [INCRBY](https://valkey.io/commands/incrby/)           | yes |
| `incrByFloat`   | [INCRBYFLOAT](https://redis.io/docs/latest/commands/incrbyfloat/) | [INCRBYFLOAT](https://valkey.io/commands/incrbyfloat/) | yes |
| `lcs`           | [LCS](https://redis.io/docs/latest/commands/lcs/)                 | [LCS](https://valkey.io/commands/lcs/)                 | yes |
| ~~`mget`~~      |                                                                   |                                                        | |
| `mGet`          | [MGET](https://redis.io/docs/latest/commands/mget/)               | [MGET](https://valkey.io/commands/mget/)               | yes |
| `mSet`          | [MSET](https://redis.io/docs/latest/commands/mset/)               | [MSET](https://valkey.io/commands/mset/)               | yes |
| `mSetEx`        | [MSETEX](https://redis.io/docs/latest/commands/msetex/)           |                                                        | |
| `mSetNx`        | [MSETNX](https://redis.io/docs/latest/commands/msetnx/)           | [MSETNX](https://valkey.io/commands/msetnx/)           | yes |
| `pSetEx`        | [PSETEX](https://redis.io/docs/latest/commands/psetex/)           | [PSETEX](https://valkey.io/commands/psetex/)           | yes |
| `set`           | [SET](https://redis.io/docs/latest/commands/set/)                 | [SET](https://valkey.io/commands/set/)                 | yes |
| `setEx`         | [SETEX](https://redis.io/docs/latest/commands/setex/)             | [SETEX](https://valkey.io/commands/setex/)             | yes |
| `setNx`         | [SETNX](https://redis.io/docs/latest/commands/setnx/)             | [SETNX](https://valkey.io/commands/setnx/)             | yes |
| `setRange`      | [SETRANGE](https://redis.io/docs/latest/commands/setrange/)       | [SETRANGE](https://valkey.io/commands/setrange/)       | yes |
| `strLen`        | [STRLEN](https://redis.io/docs/latest/commands/strlen/)           | [STRLEN](https://valkey.io/commands/strlen/)           | yes |
| `subStr`        | [SUBSTR](https://redis.io/docs/latest/commands/substr/)           | [SUBSTR](https://valkey.io/commands/substr/)           | yes |