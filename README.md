3DS Portlibs [![Build Status](https://travis-ci.org/Cruel/3ds_portlibs.svg?branch=master)](https://travis-ci.org/Cruel/3ds_portlibs)
============

Here is a Makefile for building various portlibs for 3DS. You need to first
build zlib and install it. Then you can build the other portlibs.

    $ make zlib
    $ make install-zlib
    $ make <targets>
    $ make install

This will install the portlibs to `$DEVKITPRO/portlibs/armv6k`. If this is a
privileged location, you will need to `sudo make install-zlib` and `sudo make
install` in order for the portlibs to be installed.

Currently supports the following portlibs:

* freetype (requires zlib)
* libexif
* libjpeg-turbo
* libpng (requires zlib)
* sqlite
* zlib
* mxml
* expat
* libxml2
* jansson
* physfs
* libmad
* libogg
* libvorbis
* giflib
* bzip2
