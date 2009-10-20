Authenticated RSS Proxy
=======================

Overview
--------

Inspired by Andy Delcambre, this proxy server takes a username and password as parameters and will convert a feed URL into an HTTP basic auth request and return the results.  This is useful for routing authenticated feeds (like GitHub activity feeds for private projects) into Google Reader.

Usage
-----

You'll need to split the URL of your feed up into the following parameters:

*   **hostname**
*   **url**:
    The path to the feed, excluding the hostname.
*   **ssl**:
    Set this to anything if you need ssl enabled for the feed.
*   **user**:
    Your username.
* **password**:
    Your password.

Now you can just toss these into your new URL, which should look something like this...

    http://myproxyserver.com/?hostname=github.com&url=/feeds/techpeace/commits/privaterepo/master&user=techpeace&password=mYpAssWoRd&ssl=true

...and there's your authenticated RSS feed smiling back at you from your browser.  Easy!

Hosting
-------

It's just a tiny little Sinatra app, so why not host it on Heroku for free?

    git clone git://github.com/techpeace/authenticated-rss-proxy.git
    cd authenticated-rss-proxy
    heroku create
    git push heroku master

Caveats
-------

Obviously, this isn't very secure.  Your usernames and passwords will be sitting right there in the log files.

Credits
-------

Inspired by [this post](http://andy.delcambre.com/2007/08/17/authenticated-rss-proxy.html) on Andy Delcambre's blog.
