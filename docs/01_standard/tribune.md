# tribune

A tribune is web chat system used by [moules](./moules.md).

It has a least a [bouchot](./bouchot.md):

- an [XML backend](xml_backend.md) and/or [TSV backend](./tsv_backend.md) accessible through HTTP request.
- an [HTTP POST](./post_request.md) support for posting messages.

Most alive tribunes add features:

- integrated coincoin
- file upload
- authentification

# Miscellaneous

## Character encoding

Every strings in every tribunes and subsystems MUST be valid UTF-8.

[Bouchot](./bouchot.md) SHOULD be prepared to handle invalid UTF-8 strings.

## Sanitization

[Bouchot](./bouchot.md) and [Coincoin](./coincoin.md) MUST be prepared invalid tribune data.

They MUST [sanitize](./slip.md) their inputs or die trying.