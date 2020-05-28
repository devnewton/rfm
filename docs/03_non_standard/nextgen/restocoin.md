# restocoin

RESTful tribune like protocol.

# Get request

[Bouchots](../../01_standard/bouchot.md) MUST expose an HTTP endpoint for messages retrieving.

This endpoint MUST accepts HTTP request using GET method.

Endpoint path MUST end with `/post`:

## Query string parameters

### since

Optional last known by [coincoin](../../01_standard/coincoin.md) post
[norloge](../../01_standard/norloge.md) in **Full ISO** format.

### Response body

[Bouchots](../../01_standard/bouchot.md) SHOULD produce
a JSON as response body with latest posts (newer than *since* if set).

```
{
    "posts": [
        {
            "msg": "plop",
            "from": "dave"
            "at": "2017-06-29T13:45:02.666"
            "href": "/post/12345678"
        }
    ]
}
```

# Post request

[Bouchots](../../01_standard/bouchot.md) MUST expose an HTTP endpoint for posting messages.

This endpoint MUST accepts HTTP request using POST method.

Endpoint path MUST end with `/post`:

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

[Bouchots](../../01_standard/bouchot.md) SHOULD expect error invalid BML-ROC, invalid encoding
 and generally shit posting from [moules](../../01_standard/moules.md).

### from

[Moule](../../01_standard/moules.md)'s nickname.

### since

Optional last known by [coincoin](../../01_standard/coincoin.md) post
[norloge](../../01_standard/norloge.md) in **Full ISO** format.

## Response

### Response body

If *since* parameters is set, [Bouchots](../../01_standard/bouchot.md) SHOULD produce
a JSON as response body with posts newer than *since*.

# BML-ROC

Replace [standard BML](../../01_standard/bml.md) with a well defined and RESTful markup
language.

Goals:

- easy to parse.
- readable as plain text.
- RESTful

## bigorno

Bigorno is way to hail someone prefix his nickname
with markdown like link ending with
/moule/${mouleId} path:
```
[Dave](/moule/devnewton) how are you?
```

[Coincoins](../../01_standard/coincoin.md) SHOULD hail user when a [post](../../01_standard/post.md) is received with his bigorno.

## duck

User can post an ascii art left or right ducks:

```
\_o< \_o<   >o_/
```

Ducks can have the following character as head:

```
oO0ô°øòó@
```

[Coincoins](../../01_standard/coincoin.md) MAY use ducks in [hunt](../../01_standard/hunt.md).

## [norloge](../../01_standard/norloge.md)

Restocoin use markdown-link-like norloge ending with
/post/${postId} path:

```
[10:12:42](/post/123456780) plop
```

Absolute URL MUST be used for cross bouchot posting:

```
[10:12:42](https://hadoken.free.fr/post/123456780) plop
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

[Coincoins](../../01_standard/coincoin.md) SHOULD use these to format [posts](../../01_standard/post.md):

*emphasis*

<u>underline</u>

**strong**

<s>strikethrough</s>

`printf();`

## [totoz](../../01_standard/totoz.md)

Reference a totoz with markdown like links
ending with /totoz/${totozId} path:

```
[good](/totoz/good)
```

[Coincoins](../../01_standard/coincoin.md) MAY display the referenced totoz image.