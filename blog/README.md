PRL Blog
===

Maintainer: Ben Greenman [types@ccs.neu.edu](mailto:types@ccs.neu.edu)

Powered by [frog](https://github.com/greghendershott/frog/)


Creating Posts
---

1. Run `raco frog -n "TITLE"`
2. Edit the newly-generated markdown file
3. Rebuild the blog with `raco frog -b`; open `index.html` to view
4. Remove the `DRAFT` tag
5. Commit & push your blog post

Setting up a Local Webserver
----------------------------

If you want absolute links to work in your local development environment (which
allows things like CSS and header links to work), you will have to set up a
webserver for yourself.

Linux:

1. Install lighttpd
2. Edit `/etc/lighttpd/lighttpd.conf` so that server.document-root refers to the
   root of your PRL site instance
3. Start the lighttpd server process/daemon
4. Browse to http://localhost/blog/. If you get a 403 (Forbidden) error, check
   that your http user has access to blog/index.html, including "search"
   (a.k.a. "execute") permissions on all parent folders.

OSX, Windows: TODO (this might be of use:
http://stackoverflow.com/questions/5050851/best-lightweight-web-server-only-static-content-for-windows)
