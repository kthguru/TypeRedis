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

# GENERIC

`del`, `exists`, `expire`, `scan`, `ttl`

| keyscope_client  | Redis                                                                     | Valkey                                                         | Google Memorystore |
|------------------|---------------------------------------------------------------------------|----------------------------------------------------------------|--------------------|
| `copy`           | [COPY](https://redis.io/docs/latest/commands/copy/)                       | [COPY](https://valkey.io/commands/copy/)                       | yes |
| `del`            | [DEL](https://redis.io/docs/latest/commands/del/)                         | [DEL](https://valkey.io/commands/del/)                         | yes |
| `dump`           | [DUMP](https://redis.io/docs/latest/commands/dump/)                       | [DUMP](https://valkey.io/commands/dump/)                       | yes |
| `exists`         | [EXISTS](https://redis.io/docs/latest/commands/exists/)                   | [EXISTS](https://valkey.io/commands/exists/)                   | yes |
| `expire`         | [EXPIRE](https://redis.io/docs/latest/commands/expire/)                   | [EXPIRE](https://valkey.io/commands/expire/)                   | yes |
| `expireAt`       | [EXPIREAT](https://redis.io/docs/latest/commands/expireat/)               | [EXPIREAT](https://valkey.io/commands/expireat/)               | yes |
| `expireTime`     | [EXPIRETIME](https://redis.io/docs/latest/commands/expiretime/)           | [EXPIRETIME](https://valkey.io/commands/expiretime/)           | yes |
| `keys`           | [KEYS](https://redis.io/docs/latest/commands/keys/)                       | [KEYS](https://valkey.io/commands/keys/)                       | yes |
| `migrate`        | [MIGRATE](https://redis.io/docs/latest/commands/migrate/)                 | [MIGRATE](https://valkey.io/commands/migrate/)                 | |
| `move`           | [MOVE](https://redis.io/docs/latest/commands/move/)                       | [MOVE](https://valkey.io/commands/move/)                       | |
|                  | [OBJECT](https://redis.io/docs/latest/commands/object/)                   | [OBJECT](https://valkey.io/commands/object/)                   | |
| `objectEncoding` | [OBJECT ENCODING](https://redis.io/docs/latest/commands/object-encoding/) | [OBJECT ENCODING](https://valkey.io/commands/object-encoding/) | yes |
| `objectFreq`     | [OBJECT FREQ](https://redis.io/docs/latest/commands/object-freq/)         | [OBJECT FREQ](https://valkey.io/commands/object-freq/)         | yes |
| `objectHelp`     | [OBJECT HELP](https://redis.io/docs/latest/commands/object-help/)         | [OBJECT HELP](https://valkey.io/commands/object-help/)         | yes |
| `objectIdleTime` | [OBJECT IDLETIME](https://redis.io/docs/latest/commands/object-idletime/) | [OBJECT IDLETIME](https://valkey.io/commands/object-idletime/) | yes |
| `objectRefCount` | [OBJECT REFCOUNT](https://redis.io/docs/latest/commands/object-refcount/) | [OBJECT REFCOUNT](https://valkey.io/commands/object-refcount/) | yes |
| `persist`        | [PERSIST](https://redis.io/docs/latest/commands/persist/)                 | [PERSIST](https://valkey.io/commands/persist/)                 | yes |
| `pExpire`        | [PEXPIRE](https://redis.io/docs/latest/commands/pexpire/)                 | [PEXPIRE](https://valkey.io/commands/pexpire/)                 | yes |
| `pExpireAt`      | [PEXPIREAT](https://redis.io/docs/latest/commands/pexpireat/)             | [PEXPIREAT](https://valkey.io/commands/pexpireat/)             | yes |
| `pExpireTime`    | [PEXPIRETIME](https://redis.io/docs/latest/commands/pexpiretime/)         | [PEXPIRETIME](https://valkey.io/commands/pexpiretime/)         | yes |
| `pTtl`           | [PTTL](https://redis.io/docs/latest/commands/pttl/)                       | [PTTL](https://valkey.io/commands/pttl/)                       | yes |
| `randomKey`      | [RANDOMKEY](https://redis.io/docs/latest/commands/randomkey/)             | [RANDOMKEY](https://valkey.io/commands/randomkey/)             | yes |
| `rename`         | [RENAME](https://redis.io/docs/latest/commands/rename/)                   | [RENAME](https://valkey.io/commands/rename/)                   | yes |
| `renameNx`       | [RENAMENX](https://redis.io/docs/latest/commands/renamenx/)               | [RENAMENX](https://valkey.io/commands/renamenx/)               | yes |
| `restore`        | [RESTORE](https://redis.io/docs/latest/commands/restore/)                 | [RESTORE](https://valkey.io/commands/restore/)                 | yes |
| `scan`           | [SCAN](https://redis.io/docs/latest/commands/scan/)                       | [SCAN](https://valkey.io/commands/scan/)                       | yes |
| `sort`           | [SORT](https://redis.io/docs/latest/commands/sort/)                       | [SORT](https://valkey.io/commands/sort/)                       | yes |
| `sortRo`         | [SORT_RO](https://redis.io/docs/latest/commands/sort_ro/)                 | [SORT_RO](https://valkey.io/commands/sort_ro/)                 | yes |
| `touch`          | [TOUCH](https://redis.io/docs/latest/commands/touch/)                     | [TOUCH](https://valkey.io/commands/touch/)                     | yes |
| `ttl`            | [TTL](https://redis.io/docs/latest/commands/ttl/)                         | [TTL](https://valkey.io/commands/ttl/)                         | yes |
| `type`           | [TYPE](https://redis.io/docs/latest/commands/type/)                       | [TYPE](https://valkey.io/commands/type/)                       | yes |
| `unlink`         | [UNLINK](https://redis.io/docs/latest/commands/unlink/)                   | [UNLINK](https://valkey.io/commands/unlink/)                   | yes |
| `wait`           | [WAIT](https://redis.io/docs/latest/commands/wait/)                       | [WAIT](https://valkey.io/commands/wait/)                       | yes |
| `waitAof`        | [WAITAOF](https://redis.io/docs/latest/commands/waitaof/)                 | [WAITAOF](https://valkey.io/commands/waitaof/)                 | |