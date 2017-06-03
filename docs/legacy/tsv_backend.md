# TSV backend

A [TSV](https://en.wikipedia.org/wiki/Tab-separated_values) backend:

- served with HTTP Content-Type: text/tab-separated-values.
- without header.
- with a fixed list of fields

Each line looks like:

```
${id}\t${time}\t${info}\t${login}\t${message}\n
```

## id

Technical post numeric identifier.

## time

Date and time of post in yyyyMMddHHmmss format.

## info

Free text related to posting [moule](../ontology/moules.md). Usually nickname or browser [User Agent](https://en.wikipedia.org/wiki/User_agent).

This field is stripped from any space character other than [SPACE](http://www.fileformat.info/info/unicode/char/0020/index.htm).

## login

Optional authenticated  user login.

This field is stripped from any space character other than [SPACE](http://www.fileformat.info/info/unicode/char/0020/index.htm).

## message

Message body in [BML](./bml.md) stripped from any space character other than [SPACE](http://www.fileformat.info/info/unicode/char/0020/index.htm).