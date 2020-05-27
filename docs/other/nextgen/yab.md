# YAB

[YAB](https://gitlab.com/Marotte/Yab) stands for "Yet Another Board".

Like every board engine it’s intended to incubate excellence by sharing relevant content between everyone.

The project tries to stick with the [KISS principle](https://en.wikipedia.org/wiki/KISS_principle) while being innovative. It also emancipates itself from some _de facto_ standards wildly used in the "mussel community" nowadays. One drawback of this approach is the difficulty for current clients to interoperate with Yab. On advantage is to permit to get rid of some debatable technical standard and to come closer of today’s internet user habits. 

Unlike traditional [tribunes](../../standard/tribune.md), which use the POST/GET mechanism, YAB uses websocket messages for communication between clients ([coincoins](../../standard/coincoin.md)) and server ([piling (aka bouchot)](../../standard/bouchot.md)).

The server is written in Python3 and makes use of the [uWSGI project](https://uwsgi-docs.readthedocs.io/en/latest/).

Nginx acts as a front-end to serve static content and to pass websocket requests to the [WSGI](https://en.wikipedia.org/wiki/Web_Server_Gateway_Interface) script.

Yab uses SQLite3 to store posts. It only stores the most recent posts (200 by default) just to be able to serve them again if server restarts, nothing is archived. 

The client (aka [coincoin](../../standard/coincoin.md)) is written in pure Javascript/CSS3, it relies on no external library (and preferably never will). It’s tested on the latest Firefox and Chromium and known to be incomaptible with Internet Explorer. Touchpad support is not implemented but it may be done in the future.

## Authentication 

Any visitor can post to the tribune but one can identify, to "sign" its posts, if he wants to do so.

Yab uses a very simple cookie authentication : every visitor is given a unique visitor id (VID), he can associate a username of its choice. This username will then be used as "login" field instead of the default username associated with the visitor id (which is simply a hash of it). When a username has been set for a particular visitor id, only this visitor will be able to change it.

The visitor id isn’t stored on the server (only a hash), so losing the cookie means losing the related identity. In other terms, there is no way to recover it, using a password or some other method. It may be an future feature but it’s not a priority. In case a user wants to use the same identity from different terminals he has to manually copy the cookie by himself.

By default, visitor ids assigned to clients by the server are 2048 random alphanumeric strings, but there is no policy on what a client can send as its visitor id. As we’ll see in the next part, the only limitation that applies on messages is the total size of the post data (info+id+message).

## Messages

The server uses non blocking read on the socket. Every 300ms it sends new posts (if any) to the client. All messages have the same format : the first character is a capital letter which indicate the message type, the second character is ':' and the remaining of the message is a variable number of fields separated by null characters. In the descriptions below, messages from server to client are marked with ↓ and messages from client to server marked with ↑. NUL is noted '^@'

Let’s detail:

So… chronologically, on client first connection, if we consider the client has no VID cookie yet (it’s a new visitor), the server will start the chat by sending a "Cookie" message that looks like this (the value has been truncated in the following examples):

↓    `C:4abfd94ec5835b98e4c5b210305f89c569b7a18…30c27aea2ddf624f2af89b72112bc6d2913fd^@Sat Apr 15 19:14:17 2119`

no surprise here… it will make the client write a cookie, named 'VID', the value is a 2048 long random string and it expires in roughly hundred years.

Now our client has a cookie. When a client has a cookie it sends a "Who" message to the server when it connects:

↑    `W:4abfd94ec5835b98e4c5b210305f89c569b7a18…30c27aea2ddf624f2af89b72112bc6d2913fd`

yes, it just sends the cookie value.

If it’s the first client connection its 'last id' value is 0, so the server will send all posts it has and update 'last id' to the id of the last post sent. "Post" messages look like this:

↓    `P:14^@20170608194433^@Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36^@V6bed91c9c95477d007b1c95df01f629023b6b4248241e09200b7e8e558ff27b^@plop`

here coincoin’s developpers will recognize a standard post. We have the following fields:

 1. ID is 14 (this is an integer primary key)
 2. Time of the post is 20170608194433 (this is the historical "norloge" _(not a typo)_ format, a very convenient time representation, which combines facility to parse with facility for a human to read it)
 3. Commonly referred as "info", it’s by tradition filled with the [UA string](https://en.wikipedia.org/wiki/User_agent) of the client
 4. The "login" field. Here we can see this post was probably sent by an anonymous visitor because it’s look like a hash and start with a 'V'… If the post would have been posted by an authenticated user we would find its username in this field.
 5. The actual message
 
 When a client sends a post it sends this kind of message, the "New" message:
 
 ↑    `N:Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36^@4abfd94ec5835b98e4c5b210305f89c569b7a18…30c27aea2ddf624f2af89b72112bc6d2913fd^@Coucou`

Of course the server would immediatly send back a "Post" message again with this post it just received, as it’s new (the post id is higher than last id).

## References

References are specially interpreted words in the post content, the posters (ie: users) can use them to indicate which message they’re replying to.

It’s strongly recommended to use them everytime you reply to someone or more generally make reference to a particular post.

There are two reference types in Yab : post reference and user reference.

 - Post reference: matching the regex '@[0-9]{1,16}'

 - User reference : matching the regex '@[A-zÀ-ÿ][A-zÀ-ÿ0-9_-]{1,32}'

To make a reference, just click on a username (for username ref.) or on a clock (for post ref.). It will be inserted in the post input field, at the cursor location.


