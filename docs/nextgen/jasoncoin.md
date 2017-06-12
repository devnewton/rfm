# jasoncoin

JSON based simple tribune like protocol.

# Norloges

ONLY **Full ISO** [norloge](../ontology/norloge.md) in Paris timezone MUST be used.

# Get request

[Bouchots](../ontology/bouchot.md) MUST expose an HTTP endpoint for messages retrieving.

This endpoint MUST accepts HTTP request using GET method.

Endpoint path MUST be `/tribune/get`:

## Query string parameters

### since

Optional last known by [coincoin](../ontology/coincoin.md) post
[norloge](../ontology/norloge.md) in **Full ISO** format.

### Response body

[Bouchots](../ontology/bouchot.md) SHOULD produce
a JSON as response body with latest posts (newer than *since* if set).

```
{
    "posts": [
        {
            "msg": "plop",
            "from": "dave"
            "at": "2017-06-29T13:45:02.666"
        }
    ]
}
```

# Post request

[Bouchots](../ontology/bouchot.md) MUST expose an HTTP endpoint for posting messages.

This endpoint MUST accepts HTTP request using POST method.

Endpoint path MUST be `/tribune/post`:

## Request body

Post endpoint MUST accept following request body in JSON format:

```
{
    "message": "plop",
    "from": "dave"
    "since": "2017-06-29T13:45:02.666"
}
```

### message

Mandatory message body in BML-NG format.

[Bouchots](../ontology/bouchot.md) SHOULD expect error invalid BML-NG, invalid encoding
 and generally shit posting from [moules](../ontology/moules.md).

### from

[Moule](../ontology/moules.md)'s nickname.

### since

Optional last known by [coincoin](../ontology/coincoin.md) post
[norloge](../ontology/norloge.md) in **Full ISO** format.

## Response

### Response body

If *since* parameters is set, [Bouchots](../ontology/bouchot.md) SHOULD produce
a JSON as response body with posts newer than *since*.

# BML-NG

Replace [legacy BML](../legacy/legacy_bml.md) with a well defined and KISS markup
language.

Goals:

- easy to parse.
- readable as plain text.

## bigorno

Bigorno is way to hail someone prefix his nickname
with [COMMERCIAL AT](http://www.fileformat.info/info/unicode/char/0040/index.htm):

```
@Dave how are you?
```

[Coincoins](../ontology/coincoin.md) SHOULD hail user when a [post](../ontology/post.md) is received with his bigorno.

## duck

User can post an ascii art left or right ducks:

```
\_o< \_o<   >o_/
```

Ducks can have the following character as head:

```
oO0ô°øòó@
```

[Coincoins](../ontology/coincoin.md) MAY use ducks in [hunt](../ontology/hunt.md).

## [norloge](../ontology/norloge.md)

[Coincoins](../ontology/coincoin.md) SHOULD use **Full ISO** norloges to display links or navigate between [posts](../ontology/post.md).

**Only Full ISO** norloge MUST be used.

**Bouchot suffix** MAY be used.

**Indice suffix** MUST NOT be used.

## Formatting

[Markdown](https://daringfireball.net/projects/markdown/syntax) like formatting markup:

```
*emphasis*

_underline_

**strong**

~~strikethrough~~

`printf();`

```

[Coincoins](../ontology/coincoin.md) SHOULD use these to format [posts](../ontology/post.md):

*emphasis*

<u>underline</u>

**strong**

<s>strikethrough</s>

`printf();`

## [totoz](../ontology/totoz.md)

Reference a totoz name between /[:/ and /]/:

```
[:good]
```

[Coincoins](../ontology/coincoin.md) MAY display the referenced totoz image.