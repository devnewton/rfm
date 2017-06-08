# YAB

[YAB](https://gitlab.com/Marotte/Yab) stands for "Yet Another Board".

Like every board engine it’s intended to incubate excellence by sharing relevant content between everyone.

The project tries to stick with the [KISS principle](https://en.wikipedia.org/wiki/KISS_principle) while being innovative. It also emancipates itself from some _de facto_ standards wildly used in the "mussel community" nowadays. One drawback of this approach is the difficulty for current clients to interoperate with Yab. On advantage is to permit to get rid of some debatable technical legacy and to come closer of today’s internet user. 

Unlike traditional [tribunes](../ontology/tribune.md), which use the POST/GET mechanism, YAB uses websocket messages for communication between clients ([coincoins](../ontology/coincoin.md)) and server ([piling (aka bouchot)](../ontology/bouchot.md)).

The server is written in Python3 and makes use of the [uWSGI project](https://uwsgi-docs.readthedocs.io/en/latest/).

Nginx acts as a front-end to serve static content and to pass websocket requests to the [WSGI](https://en.wikipedia.org/wiki/Web_Server_Gateway_Interface) script.

Yab uses SQLite3 to store posts. It only stores the most recent posts (200 by default) just to be able to serve them again if server restarts, nothing is archived. 

The client (aka [coincoin](../ontology/coincoin.md)) is written in pure Javascript/CSS3 and relies on no external library. It’s tested on the latest Firefox and Chromium and known to be incomaptible with Internet Explorer. Touchpad support is not implemented but it may be done in the future.


