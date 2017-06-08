# YAB

[YAB](https://gitlab.com/Marotte/Yab) stands for "Yet Another Board".

This project tries to stick with the [KISS principle](https://en.wikipedia.org/wiki/KISS_principle)

Unlike traditional [tribunes](../ontology/tribune.md), which use the POST/GET mechanism, YAB uses websocket messages for communication between clients ([coincoins](../ontology/coincoin.md)) and server ([piling (aka bouchot)](../ontology/bouchot.md)).

The server is written in Python3 and makes use of the [uWSGI project](https://uwsgi-docs.readthedocs.io/en/latest/).

Nginx is used as a front-end to serve static content and to pass websocket requests to the [WSGI](https://en.wikipedia.org/wiki/Web_Server_Gateway_Interface) script.

Yab uses SQLite3 to store posts. It only stores the most recent posts (200 by default) just to be able to serve them again if server restarts, nothing is archived. 

The client (aka [coincoin](../ontology/coincoin.md)) is written in pure Javascript/CSS3 and relies on no external library. It’s tested on latest Firefox and Chromium and known to be incomaptible with Internet Explorer. Touchpad support is not implemented but it may be in the future.


YAB (or Yab) aims 
