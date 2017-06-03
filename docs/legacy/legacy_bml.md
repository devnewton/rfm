# BML

[Moules] post using the [Bouchot](../ontology/bouchot.md) Markup Language to format [Posts](../ontology/post.md) body.

## bigorno

Bigorno is way to hail someone by adding a [LESS-THAN-SIGN](http://www.fileformat.info/info/unicode/char/3c/index.htm):

```
Dave< how are you?
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

[Coincoins](/coincoin.md) MAY use ducks in [hunt](/hunt.md).

## [norloge](/norloge.md)

[Coincoins](/coincoin.md) SHOULD use norloges to display links or navigate between [posts](/post.md).

## tags

Tags are html like formatting markup:

- without attribute
- without space

[Coincoins](/coincoin.md) SHOULD use tags to format [posts](/post.md).

### i

Same as [html5 i tag](https://www.w3schools.com/tags/tag_i.asp).

### u

Same as [html5 u tag](https://www.w3schools.com/tags/tag_u.asp).

### s

Same as [html5 s tag](https://www.w3schools.com/tags/tag_s.asp).

### tt

Same as [html5 tt tag](https://www.w3schools.com/tags/tag_tt.asp).

### code

Same as [html5 code tag](https://www.w3schools.com/tags/tag_code.asp).

### others

Other tag are forbidden.

[Bouchots](/bouchot.md) and [Coincoin](/coincoin.md) MUST handle invalid tags. 

## [totoz](/totoz.md)

Reference a totoz name between /[:/ and /]/:

```
[:good]
```

[Coincoins](/coincoin.md) MAY display the referenced totoz image.

