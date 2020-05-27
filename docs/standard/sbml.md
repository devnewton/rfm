# SBML

[Slipped](./slip.md) Bouchot Markup Language is a variant of [BML](./standard_bml.md) used in [XML backend](./xml_backend.md).

SBML can be raw or encoded.

## raw SBML

Raw SBML apply the following transformations to BML. 

### url

[Bouchot](./bouchot.md) MAY enclose URL in an [html5 like a tag](https://www.w3schools.com/tags/tag_a.asp). 

### invalid tags

[Bouchot](.//bouchot.md) MAY strip or escape (using HTML entities) non BML tags .

### html entities

[Bouchot](./bouchot.md) MAY strip or escape (using HTML entities) HTML entities.

## encoded SBML

Encoded SBML apply the same transformations to BML then escape everything using HTML entities.

