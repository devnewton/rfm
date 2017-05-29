# Norloge

Norloges are references to [post](/post.md).

# Datetime based norloge

Reference norloge by time.

## ISO

yyyy-MM-dd'T'HH:mm:ss

```
2017-06-29T13:45:01 Shit!
2017-06-29T13:45:02 What do you mean by 2017-06-29T13:45:01 ?
```

## long

MM/dd'T'HH:mm:ss

[Coincoins](/coincoin.md) SHOULD find the missing year by looking in the past.

If not found in past, [Coincoins](/coincoin.md) MAY find the missing year by looking in the past.

```
2017-06-29T13:45:01 Shit!
2017-06-29T13:45:02 What do you mean by 06/29#13:45:01 ?
```

## normal

HH:mm:ss

[Coincoins](/coincoin.md) SHOULD find the missing date by looking in the past.

If not found in past, [Coincoins](/coincoin.md) MAY find the missing date by looking in the past.

```
2017-06-29T13:45:01 Shit!
2017-06-29T13:45:02 What do you mean by 13:45:01 ?
```

## short

HH:mm

[Coincoins](/coincoin.md) SHOULD find the missing date and seconds by looking in the past.

If not found in past, [Coincoins](/coincoin.md) MAY find the missing date and seconds by looking in the past.

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
