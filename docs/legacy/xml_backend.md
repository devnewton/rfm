# XML backend

XML backend must conform to [xml_backend.xsd](./xml_backend.xsd).

```xml
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<board site="https://b3.bci.im?room=cppfrug" timezone="Europe/Paris">
    <post id="1496037685830" time="20170529080125">
        <info>dave</info>
        <message>je vous ai aussi mis sara, l'assistante de tribune à l'IA surpuissante!</message>
        <login/>
    </post>
    <post id="1496037617881" time="20170529080017">
        <info>sara</info>
        <message>Aujourd'hui, c'est la Journée Internationale des casques bleus. Hihi!</message>
        <login/>
    </post>
    <post id="1496037615685" time="20170529080015">
        <info>charlie</info>
        <message>sara&amp;lt; quoi de neuf aujourd'hui ?</message>
        <login/>
    </post>
</board>
```

## board element

board is the root element of xml backend.

### site attribute

Root URL of the [tribune](../ontology/tribune.md).

### timezone attribute

[Canonical ID](https://docs.oracle.com/javase/8/docs/api/java/util/TimeZone.html#getAvailableIDs--) of board's [norloges](../ontology/norloge.md) timezone. Default to /Europe\/Paris/.

## post element

Each post is a message posted by a [moule](../moules.md).

### id attribute

Technical post numeric identifier.

### time attribute

Date and time of post in yyyyMMddHHmmss format.

## info

Free text related to posting [moule](../moules.md). Usually nickname or browser [User Agent](https://en.wikipedia.org/wiki/User_agent).

## message

Message body in [SBML](./sbml.md) format.

## login

Optional authenticated  user login.
