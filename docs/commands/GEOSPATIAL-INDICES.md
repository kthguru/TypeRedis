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

# GEOSPATIAL INDICES

| keyscope_client       | Redis                                                                                   | Valkey                                                                   | Google Memorystore |
|-----------------------|-----------------------------------------------------------------------------------------|--------------------------------------------------------------------------|--------------------|
| `geoAdd`              | [GEOADD](https://redis.io/docs/latest/commands/geoadd/)                                 | [GEOADD](https://valkey.io/commands/geoadd/)                             | yes |
| `geoDist`             | [GEODIST](https://redis.io/docs/latest/commands/geodist/)                               | [GEODIST](https://valkey.io/commands/geodist/)                           | yes |
| `geoHash`             | [GEOHASH](https://redis.io/docs/latest/commands/geohash/)                               | [GEOHASH](https://valkey.io/commands/geohash/)                           | yes |
| `geoPos`              | [GEOPOS](https://redis.io/docs/latest/commands/geopos/)                                 | [GEOPOS](https://valkey.io/commands/geopos/)                             | yes |
| `geoRadius`           | ~~[GEORADIUS](https://redis.io/docs/latest/commands/georadius/)~~                       | [GEORADIUS](https://valkey.io/commands/georadius/)                       | yes |
| `geoRadiusByMember`   | ~~[GEORADIUSBYMEMBER](https://redis.io/docs/latest/commands/georadiusbymember/)~~       | [GEORADIUSBYMEMBER](https://valkey.io/commands/georadiusbymember/)       | yes |
| `geoRadiusByMemberRo` | ~~[GEORADIUSBYMEMBER_RO](https://redis.io/docs/latest/commands/georadiusbymember_ro/)~~ | [GEORADIUSBYMEMBER_RO](https://valkey.io/commands/georadiusbymember_ro/) | yes |
| `geoRadiusRo`         | ~~[GEORADIUS_RO](https://redis.io/docs/latest/commands/georadius_ro/)~~                 | [GEORADIUS_RO](https://valkey.io/commands/georadius_ro/)                 | yes |
| `geoSearch`           | [GEOSEARCH](https://redis.io/docs/latest/commands/geosearch/)                           | [GEOSEARCH](https://valkey.io/commands/geosearch/)                       | yes |
| `geoSearchStore`      | [GEOSEARCHSTORE](https://redis.io/docs/latest/commands/geosearchstore/)                 | [GEOSEARCHSTORE](https://valkey.io/commands/geosearchstore/)             | yes |