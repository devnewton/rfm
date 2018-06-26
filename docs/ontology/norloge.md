# Norloge

Norloges are references to [post](./post.md).

# Datetime based norloge

Reference norloge by time.

## Full ISO

YYYY-MM-DD'T'HH:mm:ss.sss

```
2017-06-29T13:45:01.421 Shit!
2017-06-29T13:45:02.666 What do you mean by 2017-06-29T13:45:01.421 ?
```

## ISO

yyyy-MM-dd'T'HH:mm:ss

```
2017-06-29T13:45:01 Shit!
2017-06-29T13:45:02 What do you mean by 2017-06-29T13:45:01 ?
```

## full

yyyy-MM-dd' 'HH:mm:ss

```
2017-06-29T13:45:01 Shit!
2017-06-29T13:45:02 What do you mean by 2017-06-29 13:45:01 ?
```

## long

MM/dd'#'HH:mm:ss

[Coincoins](./coincoin.md) SHOULD find the missing year by looking in the past.

If not found in past, [Coincoins](./coincoin.md) MAY find the missing year by looking in the future.

```
2017-06-29T13:45:01 Shit!
2017-06-29T13:45:02 What do you mean by 06/29#13:45:01 ?
```

## normal

HH:mm:ss

[Coincoins](./coincoin.md) SHOULD find the missing date by looking in the past.

If not found in past, [Coincoins](./coincoin.md) MAY find the missing date by looking in the future.

```
2017-06-29T13:45:01 Shit!
2017-06-29T13:45:02 What do you mean by 13:45:01 ?
```

## short

HH:mm

[Coincoins](./coincoin.md) SHOULD find the missing date and seconds by looking in the past.

If not found in past, [Coincoins](./coincoin.md) MAY find the missing date and seconds by looking in the future.

```
2017-06-29T13:45:01 Shit!
2017-06-29T13:45:02 What do you mean by 13:45 ?
```

# Id based norloge

Reference norloge by id prefixed by a [NUMBER SIGN](http://www.fileformat.info/info/unicode/char/0023/index.htm) char.

```
42: Shit!
43: What do you mean by #42 ?
```
# Norloge suffixes

Suffixes are optional norloge data.

They MUST be appended in the following order:

1. indice suffix
2. bouchot suffix

## Indice suffix

Indice is a disambiguation hint if two or more posts share the same datetime norloge.

Assuming that:

- post are chronologically ordered from lastest to newest.
- there is no more than 9 posts sharing the same norloge.

An indice is a number from 1 to 9 designing the referenced post.

### Ascii indice

Indice MAY be written using Ascii characters prefixed by a [CIRCUMFLEX ACCENT](http://www.fileformat.info/info/unicode/char/005E/index.htm)

```
12:42:10 Dave  : Hello!
12:42:10 Dave  : Who are you?
12:42:20 Newton: 12:42:10^1 Hi!
12:42:21 Newton: 12:42:10^2 I am Newton.
```

### Unicode indice

Indice MAY be written using Unicode characters: [¹](http://www.fileformat.info/info/unicode/char/b9/index.htm) [²](http://www.fileformat.info/info/unicode/char/b2/index.htm) [³](http://www.fileformat.info/info/unicode/char/00b3/index.htm) [⁴](http://www.fileformat.info/info/unicode/char/2074/index.htm) [⁵](http://www.fileformat.info/info/unicode/char/2075/index.htm) [⁶](http://www.fileformat.info/info/unicode/char/2076/index.htm) [⁷](http://www.fileformat.info/info/unicode/char/2077/index.htm) [⁸](http://www.fileformat.info/info/unicode/char/2078/index.htm) [⁹](http://www.fileformat.info/info/unicode/char/2079/index.htm)

```
12:42:10 Dave  : Hello!
12:42:10 Dave  : Who are you?
12:42:20 Newton: 12:42:10¹ Hi!
12:42:21 Newton: 12:42:10² I am Newton.
```

## [Bouchot](./bouchot.md) suffix

Bouchot suffix MUST be used to reference a post on another bouchot instance.

Bouchot suffix MAY be used to reference a post on same bouchot instance.

[Bouchot instance alias](./bouchot.md#alias) is written after a [COMMERCIAL AT](http://www.fileformat.info/info/unicode/char/0040/index.htm):

```
12:42:10 Dave  : Did you see this post 11:40:20@dlfp ?
```
