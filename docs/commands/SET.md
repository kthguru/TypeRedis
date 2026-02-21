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

# SET

`sadd`, `srem`, `smembers`

| keyscope_client | Redis                                                             | Valkey                                                 | Google Memorystore |
|-----------------|-------------------------------------------------------------------|--------------------------------------------------------|--------------------|
| `sAdd`          | [SADD](https://redis.io/docs/latest/commands/sadd/)               | [SADD](https://valkey.io/commands/sadd/)               | yes |
| `sCard`         | [SCARD](https://redis.io/docs/latest/commands/scard/)             | [SCARD](https://valkey.io/commands/scard/)             | yes |
| `sDiff`         | [SDIFF](https://redis.io/docs/latest/commands/sdiff/)             | [SDIFF](https://valkey.io/commands/sdiff/)             | yes |
| `sDiffStore`    | [SDIFFSTORE](https://redis.io/docs/latest/commands/sdiffstore/)   | [SDIFFSTORE](https://valkey.io/commands/sdiffstore/)   | yes |
| `sInter`        | [SINTER](https://redis.io/docs/latest/commands/sinter/)           | [SINTER](https://valkey.io/commands/sinter/)           | yes |
| `sInterCard`    | [SINTERCARD](https://redis.io/docs/latest/commands/sintercard/)   | [SINTERCARD](https://valkey.io/commands/sintercard/)   | yes |
| `sInterStore`   | [SINTERSTORE](https://redis.io/docs/latest/commands/sinterstore/) | [SINTERSTORE](https://valkey.io/commands/sinterstore/) | yes |
| `sIsMember`     | [SISMEMBER](https://redis.io/docs/latest/commands/sismember/)     | [SISMEMBER](https://valkey.io/commands/sismember/)     | yes |
| `sMembers`      | [SMEMBERS](https://redis.io/docs/latest/commands/smembers/)       | [SMEMBERS](https://valkey.io/commands/smembers/)       | yes |
| `sMIsMember`    | [SMISMEMBER](https://redis.io/docs/latest/commands/smismember/)   | [SMISMEMBER](https://valkey.io/commands/smismember/)   | yes |
| `sMove`         | [SMOVE](https://redis.io/docs/latest/commands/smove/)             | [SMOVE](https://valkey.io/commands/smove/)             | yes |
| `sPop`          | [SPOP](https://redis.io/docs/latest/commands/spop/)               | [SPOP](https://valkey.io/commands/spop/)               | yes |
| `sRandMember`   | [SRANDMEMBER](https://redis.io/docs/latest/commands/srandmember/) | [SRANDMEMBER](https://valkey.io/commands/srandmember/) | yes |
| `sRem`          | [SREM](https://redis.io/docs/latest/commands/srem/)               | [SREM](https://valkey.io/commands/srem/)               | yes |
| `sScan`         | [SSCAN](https://redis.io/docs/latest/commands/sscan/)             | [SSCAN](https://valkey.io/commands/sscan/)             | yes |
| `sUnion`        | [SUNION](https://redis.io/docs/latest/commands/sunion/)           | [SUNION](https://valkey.io/commands/sunion/)           | yes |
| `sUnionStore`   | [SUNIONSTORE](https://redis.io/docs/latest/commands/sunionstore/) | [SUNIONSTORE](https://valkey.io/commands/sunionstore/) | yes |