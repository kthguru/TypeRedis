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

# SORTED SET

`zadd`, `zrem`, `zrange`

| keyscope_client    | Redis                                                                           | Valkey                                                           | Google Memorystore |
|--------------------|---------------------------------------------------------------------------------|------------------------------------------------------------------|--------------------|
| `bzMPop`           | [BZMPOP](https://redis.io/docs/latest/commands/bzmpop/)                         | [BZMPOP](https://valkey.io/commands/bzmpop/)                     | yes |
| `bzPopMax`         | [BZPOPMAX](https://redis.io/docs/latest/commands/bzpopmax/)                     | [BZPOPMAX](https://valkey.io/commands/bzpopmax/)                 | yes |
| `bzPopMin`         | [BZPOPMIN](https://redis.io/docs/latest/commands/bzpopmin/)                     | [BZPOPMIN](https://valkey.io/commands/bzpopmin/)                 | yes |
| `zAdd`             | [ZADD](https://redis.io/docs/latest/commands/zadd/)                             | [ZADD](https://valkey.io/commands/zadd/)                         | yes |
| `zCard`            | [ZCARD](https://redis.io/docs/latest/commands/zcard/)                           | [ZCARD](https://valkey.io/commands/zcard/)                       | yes |
| `zCount`           | [ZCOUNT](https://redis.io/docs/latest/commands/zcount/)                         | [ZCOUNT](https://valkey.io/commands/zcount/)                     | yes |
| `zDiff`            | [ZDIFF](https://redis.io/docs/latest/commands/zdiff/)                           | [ZDIFF](https://valkey.io/commands/zdiff/)                       | yes |
| `zDiffStore`       | [ZDIFFSTORE](https://redis.io/docs/latest/commands/zdiffstore/)                 | [ZDIFFSTORE](https://valkey.io/commands/zdiffstore/)             | yes |
| `zIncrBy`          | [ZINCRBY](https://redis.io/docs/latest/commands/zincrby/)                       | [ZINCRBY](https://valkey.io/commands/zincrby/)                   | yes |
| `zInter`           | [ZINTER](https://redis.io/docs/latest/commands/zinter/)                         | [ZINTER](https://valkey.io/commands/zinter/)                     | yes |
| `zInterCard`       | [ZINTERCARD](https://redis.io/docs/latest/commands/zintercard/)                 | [ZINTERCARD](https://valkey.io/commands/zintercard/)             | yes |
| `zInterStore`      | [ZINTERSTORE](https://redis.io/docs/latest/commands/zinterstore/)               | [ZINTERSTORE](https://valkey.io/commands/zinterstore/)           | yes |
| `zLexCount`        | [ZLEXCOUNT](https://redis.io/docs/latest/commands/zlexcount/)                   | [ZLEXCOUNT](https://valkey.io/commands/zlexcount/)               | yes |
| `zMPop`            | [ZMPOP](https://redis.io/docs/latest/commands/zmpop/)                           | [ZMPOP](https://valkey.io/commands/zmpop/)                       | yes |
| `zMScore`          | [ZMSCORE](https://redis.io/docs/latest/commands/zmscore/)                       | [ZMSCORE](https://valkey.io/commands/zmscore/)                   | yes |
| `zPopMax`          | [ZPOPMAX](https://redis.io/docs/latest/commands/zpopmax/)                       | [ZPOPMAX](https://valkey.io/commands/zpopmax/)                   | yes |
| `zPopMin`          | [ZPOPMIN](https://redis.io/docs/latest/commands/zpopmin/)                       | [ZPOPMIN](https://valkey.io/commands/zpopmin/)                   | yes |
| `zRandMember`      | [ZRANDMEMBER](https://redis.io/docs/latest/commands/zrandmember/)               | [ZRANDMEMBER](https://valkey.io/commands/zrandmember/)           | yes |
| `zRange`           | [ZRANGE](https://redis.io/docs/latest/commands/zrange/)                         | [ZRANGE](https://valkey.io/commands/zrange/)                     | yes |
| `zRangeByLex`      | ~~[ZRANGEBYLEX](https://redis.io/docs/latest/commands/zrangebylex/)~~           | [ZRANGEBYLEX](https://valkey.io/commands/zrangebylex/)           | yes |
| `zRangeByScore`    | ~~[ZRANGEBYSCORE](https://redis.io/docs/latest/commands/zrangebyscore/)~~       | [ZRANGEBYSCORE](https://valkey.io/commands/zrangebyscore/)       | yes |
| `zRangeStore`      | [ZRANGESTORE](https://redis.io/docs/latest/commands/zrangestore/)               | [ZRANGESTORE](https://valkey.io/commands/zrangestore/)           | yes |
| `zRank`            | [ZRANK](https://redis.io/docs/latest/commands/zrank/)                           | [ZRANK](https://valkey.io/commands/zrank/)                       | yes |
| `zRem`             | [ZREM](https://redis.io/docs/latest/commands/zrem/)                             | [ZREM](https://valkey.io/commands/zrem/)                         | yes |
| `zRemRangeByLex`   | [ZREMRANGEBYLEX](https://redis.io/docs/latest/commands/zremrangebylex/)         | [ZREMRANGEBYLEX](https://valkey.io/commands/zremrangebylex/)     | yes |
| `zRemRangeByRank`  | [ZREMRANGEBYRANK](https://redis.io/docs/latest/commands/zremrangebyrank/)       | [ZREMRANGEBYRANK](https://valkey.io/commands/zremrangebyrank/)   | yes |
| `zRemRangeByScore` | [ZREMRANGEBYSCORE](https://redis.io/docs/latest/commands/zremrangebyscore/)     | [ZREMRANGEBYSCORE](https://valkey.io/commands/zremrangebyscore/) | yes |
| `zRevRange`        | ~~[ZREVRANGE](https://redis.io/docs/latest/commands/zrevrange/)~~               | [ZREVRANGE](https://valkey.io/commands/zrevrange/)               | yes |
| `zRevRangeByLex`   | ~~[ZREVRANGEBYLEX](https://redis.io/docs/latest/commands/zrevrangebylex/)~~     | [ZREVRANGEBYLEX](https://valkey.io/commands/zrevrangebylex/)     | yes |
| `zRevRangeByScore` | ~~[ZREVRANGEBYSCORE](https://redis.io/docs/latest/commands/zrevrangebyscore/)~~ | [ZREVRANGEBYSCORE](https://valkey.io/commands/zrevrangebyscore/) | yes |
| `zRevRank`         | [ZREVRANK](https://redis.io/docs/latest/commands/zrevrank/)                     | [ZREVRANK](https://valkey.io/commands/zrevrank/)                 | yes |
| `zScan`            | [ZSCAN](https://redis.io/docs/latest/commands/zscan/)                           | [ZSCAN](https://valkey.io/commands/zscan/)                       | yes |
| `zScore`           | [ZSCORE](https://redis.io/docs/latest/commands/zscore/)                         | [ZSCORE](https://valkey.io/commands/zscore/)                     | yes |
| `zUnion`           | [ZUNION](https://redis.io/docs/latest/commands/zunion/)                         | [ZUNION](https://valkey.io/commands/zunion/)                     | yes |
| `zUnionStore`      | [ZUNIONSTORE](https://redis.io/docs/latest/commands/zunionstore/)               | [ZUNIONSTORE](https://valkey.io/commands/zunionstore/)           | yes |