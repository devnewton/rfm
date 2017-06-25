# TSV backend

A [TSV](https://en.wikipedia.org/wiki/Tab-separated_values) backend:

- served with HTTP Content-Type: text/tab-separated-values.
- without header.
- with a fixed list of fields

Each line looks like:

```
${id}\t${time}\t${info}\t${login}\t${message}\n
```

Fields MUST not contains the following forbidden characters:

- [CHARACTER TABULATION](http://www.fileformat.info/info/unicode/char/0009/index.htm)
- [CARRIAGE RETURN](http://www.fileformat.info/info/unicode/char/000D/index.htm)
- [LINE FEED](http://www.fileformat.info/info/unicode/char/000A/index.htm)

[Bouchots](../ontology/bouchot.md) SHOULD replace forbidden characters by
[SPACE](http://www.fileformat.info/info/unicode/char/0020/index.htm).

## id

Technical post numeric identifier.

## time

Date and time of post in yyyyMMddHHmmss format.

## info

Free text related to posting [moule](../ontology/moules.md). Usually nickname or browser [User Agent](https://en.wikipedia.org/wiki/User_agent).

## login

Optional authenticated  user login.

## message

Message body in [BML](./legacy_bml.md).