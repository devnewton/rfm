# SBML

[Slipped](../ontology/slip.md) Bouchot Markup Language is a variant of [BML](./legacy_bml.md) used in [XML backend](./xml_backend.md).

SBML can be raw or encoded.

## raw SBML

Raw SBML apply the following transformations to BML. 

### url

[Bouchot](../ontology/bouchot.md) MAY enclose URL in an [html5 like a tag](https://www.w3schools.com/tags/tag_a.asp). 

### invalid tags

[Bouchot](../ontology//bouchot.md) MAY strip or escape (using HTML entities) non BML tags .

### html entities

[Bouchot](../ontology/bouchot.md) MAY strip or escape (using HTML entities) HTML entities.

## encoded SBML

Encoded SBML apply the same transformations to BML then escape everything using HTML entities.

