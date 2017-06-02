# Post request

[Bouchots](/bouchot.md) MUST expose an HTTP endpoint for posting messages.

This endpoint SHOULD accepts HTTP POST request and consumes parameters
in multipart/form-data format.

Alternative post endpoint methods/parameters/headers MAY be used and documented
using [discovery](./discovery_sample.xml) file.

## Request parameters

### message

Mandatory message body in [BML](./legacy_bml.md) format.

### lastId

Optional unique identifier of last known post by [coincoin](/coincoin.md).

## Request headers

### User-Agent

Optional free text related to posting [moule](../moules.md). Usually nickname or browser [User Agent](https://en.wikipedia.org/wiki/User_agent).

## Response

### Response body

If lastId parameters is set, [Bouchots](/bouchot.md) SHOULD produce an 
[XML backend](xml_backend.md) or [TSV backend](./tsv_backend.md) as response body
with posts newer than lastId.

### Response headers

# X-Post-Id

Optional unique identifier of the post inserted by the request.
