# restocoin

RESTful tribune like protocol.

# Get request

[Bouchots](../ontology/bouchot.md) MUST expose an HTTP endpoint for messages retrieving.

This endpoint MUST accepts HTTP request using GET method.

Endpoint path MUST be `/tribune/post`:

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
            "href": "/tribune/post/12345678"
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

Mandatory message body in BML-ROC format.

[Bouchots](../ontology/bouchot.md) SHOULD expect error invalid BML-ROC, invalid encoding
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

# BML-ROC

Replace [legacy BML](../legacy/legacy_bml.md) with a well defined and RESTful markup
language.

Goals:

- easy to parse.
- readable as plain text.
- RESTful

## bigorno

Bigorno is way to hail someone prefix his nickname
with markdown like link relative to tribune base URL with 
/tribune/moule/${mouleId} as path fragment:
```
[Dave](/tribune/moule/devnewton) how are you?
```

[Coincoins](../ontology/coincoin.md) SHOULD hail user when a [post](../ontology/post.md) is received with his bigorno.

## duck

User can post an ascii art left or right ducks with markdown like link
relative to tribune base URL with 
/tribune/duck/${duckId} as path fragment:

```
[\_o<](/tribune/duck/${duckId})
```

[Coincoins](../ontology/coincoin.md) MAY kill ducks in [hunt](../ontology/hunt.md)
with a GET request on /tribune/duck/${duckId}/pan.

## [norloge](../ontology/norloge.md)

Restocoin use markdown-link-like norloge relative to tribune base URL with 
/tribune/post/${postId} as path fragment:

```
[10:12:42](/tribune/post/123456780) plop
```

Absolute URL is used for cross bouchot posting:

```
[10:12:42](https://hadoken.free.fr/tribune/post/123456780) plop
```

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

Reference a totoz with markdown like links
relative to tribune base URL with 
/tribune/totoz/${totozId} as path fragment:

```
[good](/tribune/totoz/good)
```

[Coincoins](../ontology/coincoin.md) MAY display the referenced totoz image.