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

# RESP

[Redis serialization protocol specification](https://redis.io/docs/latest/develop/reference/protocol-spec)

| RESP data type   | Minimal protocol version | Category  | First byte | keyscope_client |
|------------------|--------------------------|-----------|------------|-----------------| 
| Simple strings   | RESP 2                   | Simple    | +          | yes             |
| Simple Errors    | RESP 2                   | Simple    | -          | yes             |
| Integers         | RESP 2                   | Simple    | :          | yes             |
| Bulk strings     | RESP 2                   | Aggregate | $          | yes             |
| Arrays           | RESP 2                   | Aggregate | *          | yes             |
| Nulls            | RESP 3                   | Simple    | _          |                 |
| Booleans         | RESP 3                   | Simple    | #          |                 |
| Doubles          | RESP 3                   | Simple    | ,          |                 |
| Big numbers      | RESP 3                   | Simple    | (          |                 |
| Bulk errors      | RESP 3                   | Aggregate | !          |                 |
| Verbatim strings | RESP 3                   | Aggregate | =          |                 |
| Maps             | RESP 3                   | Aggregate | %          |                 |
| Attributes       | RESP 3                   | Aggregate | |          |                 |
| Sets             | RESP 3                   | Aggregate | ~          |                 |
| Pushes           | RESP 3                   | Aggregate | >          |                 |