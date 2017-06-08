# YAB

[YAB](https://gitlab.com/Marotte/Yab) stands for "Yet Another Board".

Like every board engine it’s intended to incubate excellence by sharing relevant content between everyone.

The project tries to stick with the [KISS principle](https://en.wikipedia.org/wiki/KISS_principle) while being innovative. It also emancipates itself from some _de facto_ standards wildly used in the "mussel community" nowadays. One drawback of this approach is the difficulty for current clients to interoperate with Yab. On advantage is to permit to get rid of some debatable technical legacy and to come closer of today’s internet user habits. 

Unlike traditional [tribunes](../ontology/tribune.md), which use the POST/GET mechanism, YAB uses websocket messages for communication between clients ([coincoins](../ontology/coincoin.md)) and server ([piling (aka bouchot)](../ontology/bouchot.md)).

The server is written in Python3 and makes use of the [uWSGI project](https://uwsgi-docs.readthedocs.io/en/latest/).

Nginx acts as a front-end to serve static content and to pass websocket requests to the [WSGI](https://en.wikipedia.org/wiki/Web_Server_Gateway_Interface) script.

Yab uses SQLite3 to store posts. It only stores the most recent posts (200 by default) just to be able to serve them again if server restarts, nothing is archived. 

The client (aka [coincoin](../ontology/coincoin.md)) is written in pure Javascript/CSS3, it relies on no external library (and preferably never will). It’s tested on the latest Firefox and Chromium and known to be incomaptible with Internet Explorer. Touchpad support is not implemented but it may be done in the future.

## Authentication 

Any visitor can post to the tribune but one can identify, to "sign" its posts, if he wants to do so.

Yab uses a very simple cookie authentication : every visitor is given a unique visitor id, he can associate a username of its choice. This username will then be used as "login" field instead of the default username associated with the visitor id (which is simply a hash of it). When a username has been set for a particular visitor id, only this visitor will be able to change it.

The visitor id isn’t stored on the server (only a hash), so losing the cookie means losing the related identity. In other terms, there is no way to recover it, using a password or some other method. It may be an future feature but it’s not a priority. In case a user wants to use the same identity from different terminals he has to manually copy the cookie by himself.

By default visitor ids assigned to clients by the server are 2048 random alphanumeric strings, but there is no policy on what a client can send as its visitor id. As we’ll see in the next part, the only limitation that applies on messages is the total size of the post data (info+id+message).

## Messages



