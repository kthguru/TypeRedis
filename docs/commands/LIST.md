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

# LIST

| keyscope_client | Redis                                                               | Valkey                                               | Google Memorystore |
|-----------------|---------------------------------------------------------------------|------------------------------------------------------|--------------------|
| `bLMove`        | [BLMOVE](https://redis.io/docs/latest/commands/blmove/)             | [BLMOVE](https://valkey.io/commands/blmove/)         | yes |
| `bLMPop`        | [BLMPOP](https://redis.io/docs/latest/commands/blmpop/)             | [BLMPOP](https://valkey.io/commands/blmpop/)         | yes |
| `bLPop`         | [BLPOP](https://redis.io/docs/latest/commands/blpop/)               | [BLPOP](https://valkey.io/commands/blpop/)           | yes |
| `bRPop`         | [BRPOP](https://redis.io/docs/latest/commands/brpop/)               | [BRPOP](https://valkey.io/commands/brpop/)           | yes |
| `bRPopLPush`    | ~~[BRPOPLPUSH](https://redis.io/docs/latest/commands/brpoplpush/)~~ | [BRPOPLPUSH](https://valkey.io/commands/brpoplpush/) | yes |
| `lIndex`        | [LINDEX](https://redis.io/docs/latest/commands/lindex/)             | [LINDEX](https://valkey.io/commands/lindex/)         | yes |
| `lInsert`       | [LINSERT](https://redis.io/docs/latest/commands/linsert/)           | [LINSERT](https://valkey.io/commands/linsert/)       | yes |
| `lLen`          | [LLEN](https://redis.io/docs/latest/commands/llen/)                 | [LLEN](https://valkey.io/commands/llen/)             | yes |
| `lMove`         | [LMOVE](https://redis.io/docs/latest/commands/lmove/)               | [LMOVE](https://valkey.io/commands/lmove/)           | yes |
| `lMPop`         | [LMPOP](https://redis.io/docs/latest/commands/lmpop/)               | [LMPOP](https://valkey.io/commands/lmpop/)           | yes |
| `lPop`          | [LPOP](https://redis.io/docs/latest/commands/lpop/)                 | [LPOP](https://valkey.io/commands/lpop/)             | yes |
| `lPos`          | [LPOS](https://redis.io/docs/latest/commands/lpos/)                 | [LPOS](https://valkey.io/commands/lpos/)             | yes |
| `lPush`         | [LPUSH](https://redis.io/docs/latest/commands/lpush/)               | [LPUSH](https://valkey.io/commands/lpush/)           | yes |
| `lPushX`        | [LPUSHX](https://redis.io/docs/latest/commands/lpushx/)             | [LPUSHX](https://valkey.io/commands/lpushx/)         | yes |
| `lRange`        | [LRANGE](https://redis.io/docs/latest/commands/lrange/)             | [LRANGE](https://valkey.io/commands/lrange/)         | yes |
| `lRem`          | [LREM](https://redis.io/docs/latest/commands/lrem/)                 | [LREM](https://valkey.io/commands/lrem/)             | yes |
| `lSet`          | [LSET](https://redis.io/docs/latest/commands/lset/)                 | [LSET](https://valkey.io/commands/lset/)             | yes |
| `lTrim`         | [LTRIM](https://redis.io/docs/latest/commands/ltrim/)               | [LTRIM](https://valkey.io/commands/ltrim/)           | yes |
| `rPop`          | [RPOP](https://redis.io/docs/latest/commands/rpop/)                 | [RPOP](https://valkey.io/commands/rpop/)             | yes |
| `rPopLPush`     | ~~[RPOPLPUSH](https://redis.io/docs/latest/commands/rpoplpush/)~~   | [RPOPLPUSH](https://valkey.io/commands/rpoplpush/)   | yes |
| `rPush`         | [RPUSH](https://redis.io/docs/latest/commands/rpush/)               | [RPUSH](https://valkey.io/commands/rpush/)           | yes |
| `rPushX`        | [RPUSHX](https://redis.io/docs/latest/commands/rpushx/)             | [RPUSHX](https://valkey.io/commands/rpushx/)         | yes |