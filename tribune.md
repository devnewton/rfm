# tribune

A tribune is web chat system used by [moules](/moules.md).

Two tribune generations exist:

- [legacy](/legacy/legacy_tribune.md)
- [new](/new/new_tribune.md)

# Miscellaneous

## Character encoding

Every strings in every tribunes and subsystems MUST be valid UTF-8.

[Bouchot](/bouchot.md) SHOULD be prepared to handle invalid UTF-8 strings.

## Sanitization

[Bouchot](/bouchot.md) and [Coincoin](/coincoin.md) MUST be prepared invalid tribune data.

They MUST [sanitize](/slip.md) their inputs or die trying.