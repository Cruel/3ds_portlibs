FREETYPE             := freetype
FREETYPE_VERSION     := $(FREETYPE)-2.6.1
FREETYPE_SRC         := $(FREETYPE_VERSION).tar.bz2
FREETYPE_DOWNLOAD    := "http://download.savannah.gnu.org/releases/freetype/freetype-2.6.1.tar.bz2"

LIBEXIF              := libexif
LIBEXIF_VERSION      := $(LIBEXIF)-0.6.21
LIBEXIF_SRC          := $(LIBEXIF_VERSION).tar.bz2
LIBEXIF_DOWNLOAD     := "http://sourceforge.net/projects/libexif/files/libexif/0.6.21/libexif-0.6.21.tar.bz2"

LIBJPEGTURBO         := libjpeg-turbo
LIBJPEGTURBO_VERSION := $(LIBJPEGTURBO)-1.4.2
LIBJPEGTURBO_SRC     := $(LIBJPEGTURBO_VERSION).tar.gz
LIBJPEGTURBO_DOWNLOAD:= "http://sourceforge.net/projects/libjpeg-turbo/files/1.4.2/libjpeg-turbo-1.4.2.tar.gz"

LIBPNG               := libpng
LIBPNG_VERSION       := $(LIBPNG)-1.6.19
LIBPNG_SRC           := $(LIBPNG_VERSION).tar.xz
LIBPNG_DOWNLOAD      := "http://prdownloads.sourceforge.net/libpng/libpng-1.6.19.tar.xz"

SQLITE               := sqlite
SQLITE_VERSION       := $(SQLITE)-autoconf-3090200
SQLITE_SRC           := $(SQLITE_VERSION).tar.gz
SQLITE_DOWNLOAD      := "https://www.sqlite.org/2015/sqlite-autoconf-3090200.tar.gz"

ZLIB                 := zlib
ZLIB_VERSION         := $(ZLIB)-1.2.8
ZLIB_SRC             := $(ZLIB_VERSION).tar.gz
ZLIB_DOWNLOAD        := "http://prdownloads.sourceforge.net/libpng/zlib-1.2.8.tar.gz"

MXML                 := mxml
MXML_VERSION         := $(MXML)-2.9
MXML_SRC             := $(MXML_VERSION).tar.gz
MXML_DOWNLOAD        := "http://www.msweet.org/files/project3/mxml-2.9.tar.gz"

EXPAT                := expat
EXPAT_VERSION        := $(EXPAT)-2.1.0
EXPAT_SRC            := $(EXPAT_VERSION).tar.gz
EXPAT_DOWNLOAD       := "http://sourceforge.net/projects/expat/files/expat/2.1.0/expat-2.1.0.tar.gz"

LIBXML2              := libxml2
LIBXML2_VERSION      := $(LIBXML2)-2.9.3
LIBXML2_SRC          := $(LIBXML2_VERSION).tar.gz
LIBXML2_DOWNLOAD     := "http://xmlsoft.org/sources/libxml2-2.9.3.tar.gz"

JANSSON              := jansson
JANSSON_VERSION      := $(JANSSON)-2.7
JANSSON_SRC          := $(JANSSON_VERSION).tar.gz
JANSSON_DOWNLOAD     := "http://www.digip.org/jansson/releases/jansson-2.7.tar.gz"

PHYSFS               := physfs
PHYSFS_VERSION       := $(PHYSFS)-2.0.3
PHYSFS_SRC           := $(PHYSFS_VERSION).tar.bz2
PHYSFS_DOWNLOAD      := "https://icculus.org/physfs/downloads/physfs-2.0.3.tar.bz2"

LIBMAD               := libmad
LIBMAD_VERSION       := $(LIBMAD)-0.15.1b
LIBMAD_SRC           := $(LIBMAD_VERSION).tar.gz
LIBMAD_DOWNLOAD      := "http://sourceforge.net/projects/mad/files/libmad/0.15.1b/libmad-0.15.1b.tar.gz"

LIBOGG               := libogg
LIBOGG_VERSION       := $(LIBOGG)-1.3.2
LIBOGG_SRC           := $(LIBOGG_VERSION).tar.xz
LIBOGG_DOWNLOAD      := "http://downloads.xiph.org/releases/ogg/libogg-1.3.2.tar.xz"

LIBVORBIS            := libvorbis
LIBVORBIS_VERSION    := $(LIBVORBIS)-1.3.5
LIBVORBIS_SRC        := $(LIBVORBIS_VERSION).tar.xz
LIBVORBIS_DOWNLOAD   := "http://downloads.xiph.org/releases/vorbis/libvorbis-1.3.5.tar.xz"

GIFLIB               := giflib
GIFLIB_VERSION       := $(GIFLIB)-5.1.1
GIFLIB_SRC           := $(GIFLIB_VERSION).tar.bz2
GIFLIB_DOWNLOAD      := "http://sourceforge.net/projects/giflib/files/giflib-5.1.1.tar.bz2"

LIBCONFIG            := libconfig
LIBCONFIG_VERSION    := $(LIBCONFIG)-1.5
LIBCONFIG_SRC        := $(LIBCONFIG_VERSION).tar.gz
LIBCONFIG_DOWNLOAD   := "http://www.hyperrealm.com/libconfig/libconfig-1.5.tar.gz"

BZIP2                := bzip2
BZIP2_VERSION        := $(BZIP2)-1.0.6
BZIP2_SRC            := $(BZIP2_VERSION).tar.gz
BZIP2_DOWNLOAD       := "http://www.bzip.org/1.0.6/bzip2-1.0.6.tar.gz"

XZ                   := xz
XZ_VERSION           := $(XZ)-5.2.2
XZ_SRC               := $(XZ_VERSION).tar.xz
XZ_DOWNLOAD          := "http://tukaani.org/xz/xz-5.2.2.tar.xz"

LIBARCHIVE           := libarchive
LIBARCHIVE_VERSION   := $(LIBARCHIVE)-3.1.2
LIBARCHIVE_SRC       := $(LIBARCHIVE_VERSION).tar.gz
LIBARCHIVE_DOWNLOAD  := "http://www.libarchive.org/downloads/libarchive-3.1.2.tar.gz"

NETTLE                 := nettle
NETTLE_VERSION          := $(NETTLE)-3.3
NETTLE_SRC              := $(NETTLE_VERSION).tar.gz
NETTLE_DOWNLOAD         := "https://ftp.gnu.org/gnu/nettle/nettle-3.3.tar.gz"

WSLAY                  := wslay
WSLAY_VERSION          := $(WSLAY)-release-1.0.0
WSLAY_SRC              := $(WSLAY_VERSION).tar.gz
WSLAY_DOWNLOAD         := "https://github.com/tatsuhiro-t/wslay/archive/release-1.0.0.tar.gz"


export PORTLIBS        := $(DEVKITPRO)/portlibs/3ds
export PATH            := $(DEVKITARM)/bin:$(PATH)
export PKG_CONFIG_PATH := $(PORTLIBS)/lib/pkgconfig
export CFLAGS          := -g -march=armv6k -mtune=mpcore -mfloat-abi=hard -O3 \
                          -mword-relocations -ffunction-sections
export CPPFLAGS        := -I$(PORTLIBS)/include -I$(CTRULIB)/include
export LDFLAGS         := -L$(PORTLIBS)/lib

.PHONY: all install install-zlib clean \
	$(FREETYPE) \
	$(LIBEXIF) \
	$(LIBJPEGTURBO) \
	$(LIBPNG) \
	$(SQLITE) \
	$(ZLIB) \
	$(MXML) \
	$(EXPAT) \
	$(LIBXML2) \
	$(JANSSON) \
	$(PHYSFS) \
	$(LIBMAD) \
	$(LIBOGG) \
	$(LIBVORBIS) \
	$(GIFLIB) \
	$(LIBCONFIG) \
	$(BZIP2) \
	$(XZ) \
	$(LIBARCHIVE) \
	$(NETTLE) \
	$(WSLAY)

all:
	@echo "Please choose one of the following targets:"
	@echo "  $(FREETYPE) (requires zlib to be installed)"
	@echo "  $(LIBEXIF)"
	@echo "  $(LIBJPEGTURBO)"
	@echo "  $(LIBPNG) (requires zlib to be installed)"
	@echo "  $(SQLITE)"
	@echo "  $(ZLIB)"
	@echo "  $(MXML)"
	@echo "  $(EXPAT)"
	@echo "  $(LIBXML2)"
	@echo "  $(JANSSON)"
	@echo "  $(PHYSFS) (requires zlib to be installed)"
	@echo "  $(LIBMAD)"
	@echo "  $(LIBOGG)"
	@echo "  $(LIBVORBIS) (requires libogg to be installed)"
	@echo "  $(GIFLIB)"
	@echo "  $(LIBCONFIG)"
	@echo "  $(BZIP2)"
	@echo "  $(XZ)"
	@echo "  $(LIBARCHIVE)"
	@echo "  $(NETTLE)"
	@echo "  $(WSLAY)"

$(FREETYPE): $(FREETYPE_SRC)
	@[ -d $(FREETYPE_VERSION) ] || tar -xaf $<
	@cd $(FREETYPE_VERSION) && \
	 ./configure --prefix=$(PORTLIBS) --host=arm-none-eabi --disable-shared --enable-static --without-harfbuzz
	@$(MAKE) -C $(FREETYPE_VERSION)

$(LIBEXIF): $(LIBEXIF_SRC)
	@[ -d $(LIBEXIF_VERSION) ] || tar -xaf $<
	@cd $(LIBEXIF_VERSION) && \
	 ./configure --prefix=$(PORTLIBS) --host=arm-none-eabi --disable-shared --enable-static
	@$(MAKE) -C $(LIBEXIF_VERSION)

$(LIBJPEGTURBO): $(LIBJPEGTURBO_SRC)
	@[ -d $(LIBJPEGTURBO_VERSION) ] || tar -xaf $<
	@cd $(LIBJPEGTURBO_VERSION) && \
	 ./configure --prefix=$(PORTLIBS) --host=arm-none-eabi --disable-shared --enable-static
	@$(MAKE) CFLAGS+="\"-Drandom()=rand()\"" -C $(LIBJPEGTURBO_VERSION)

$(LIBPNG): $(LIBPNG_SRC)
	@[ -d $(LIBPNG_VERSION) ] || tar -xaf $<
	@cd $(LIBPNG_VERSION) && \
	 ./configure --prefix=$(PORTLIBS) --host=arm-none-eabi --disable-shared --enable-static
	@$(MAKE) -C $(LIBPNG_VERSION)

# sqlite won't work with -ffast-math
$(SQLITE): $(SQLITE_SRC)
	@[ -d $(SQLITE_VERSION) ] || tar -xaf $<
	@cd $(SQLITE_VERSION) && \
	 CFLAGS="$(filter-out -ffast-math,$(CFLAGS)) -DSQLITE_OS_OTHER=1" ./configure --disable-shared --disable-threadsafe --disable-dynamic-extensions --host=arm-none-eabi --prefix=$(PORTLIBS)
	# avoid building sqlite3 shell
	@$(MAKE) -C $(SQLITE_VERSION) libsqlite3.la

$(ZLIB): $(ZLIB_SRC)
	@[ -d $(ZLIB_VERSION) ] || tar -xaf $<
	@cd $(ZLIB_VERSION) && \
	 CHOST=arm-none-eabi ./configure --static --prefix=$(PORTLIBS)
	@$(MAKE) -C $(ZLIB_VERSION)

$(MXML): $(MXML_SRC)
	@[ -d $(MXML_VERSION) ] || tar -xaf $<
	@cd $(MXML_VERSION) && \
	 ./configure --prefix=$(PORTLIBS) --host=arm-none-eabi --disable-shared --disable-threads
	@$(MAKE) -C $(MXML_VERSION) libmxml.a

$(EXPAT): $(EXPAT_SRC)
	@[ -d $(EXPAT_VERSION) ] || tar -xaf $<
	@cd $(EXPAT_VERSION) && \
	 ./configure --prefix=$(PORTLIBS) --host=arm-none-eabi --disable-shared --enable-static
	@$(MAKE) -C $(EXPAT_VERSION)

$(LIBXML2): $(LIBXML2_SRC)
	@[ -d $(LIBXML2_VERSION) ] || tar -xaf $<
	@cd $(LIBXML2_VERSION) && \
	 ./configure --prefix=$(PORTLIBS) --host=arm-none-eabi --disable-shared --enable-static --without-http --without-ftp --without-threads
	@$(MAKE) -C $(LIBXML2_VERSION) libxml2.la

$(JANSSON): $(JANSSON_SRC)
	@[ -d $(JANSSON_VERSION) ] || tar -xaf $<
	@cd $(JANSSON_VERSION) && \
	 ./configure --prefix=$(PORTLIBS) --host=arm-none-eabi --disable-shared --enable-static
	@$(MAKE) -C $(JANSSON_VERSION)

$(PHYSFS): $(PHYSFS_SRC)
	@[ -d $(PHYSFS_VERSION) ] || tar -xaf $<
	@cd $(PHYSFS_VERSION) && \
	cmake -DCMAKE_TOOLCHAIN_FILE=../arm.cmake -DPHYSFS_HAVE_THREAD_SUPPORT=FALSE -DCMAKE_INSTALL_PREFIX=$(PORTLIBS) -DPHYSFS_BUILD_TEST=FALSE -DPHYSFS_BUILD_SHARED=FALSE -DPHYSFS_BUILD_STATIC=TRUE .
	# ./configure --prefix=$(PORTLIBS) --host=arm-none-eabi --disable-shared --enable-static
	@$(MAKE) -C $(PHYSFS_VERSION)

$(LIBMAD): $(LIBMAD_SRC)
	@[ -d $(LIBMAD_VERSION) ] || tar -xaf $<
	@cd $(LIBMAD_VERSION) && \
	 patch -Np1 -i ../libmad-0.15.1b.patch && \
	 ./configure --prefix=$(PORTLIBS) --host=arm-none-eabi --disable-shared --enable-static
	@$(MAKE) -C $(LIBMAD_VERSION)

$(LIBOGG): $(LIBOGG_SRC)
	@[ -d $(LIBOGG_VERSION) ] || tar -xaf $<
	@cd $(LIBOGG_VERSION) && \
	 ./configure --prefix=$(PORTLIBS) --host=arm-none-eabi --disable-shared --enable-static
	@$(MAKE) -C $(LIBOGG_VERSION)

$(LIBVORBIS): $(LIBVORBIS_SRC)
	@[ -d $(LIBVORBIS_VERSION) ] || tar -xaf $<
	@cd $(LIBVORBIS_VERSION) && \
	 ./configure --prefix=$(PORTLIBS) --host=arm-none-eabi --disable-shared --enable-static
	@$(MAKE) -C $(LIBVORBIS_VERSION)

$(GIFLIB): $(GIFLIB_SRC)
	@[ -d $(GIFLIB_VERSION) ] || tar -xaf $<
	@cd $(GIFLIB_VERSION) && \
	 ./configure --prefix=$(PORTLIBS) --host=arm-none-eabi --disable-shared --enable-static
	@$(MAKE) -C $(GIFLIB_VERSION)

$(LIBCONFIG): $(LIBCONFIG_SRC)
	@[ -d $(LIBCONFIG_VERSION) ] || tar -xf $<
	@cd $(LIBCONFIG_VERSION) && \
	 ./configure --prefix=$(PORTLIBS) --host=arm-none-eabi --disable-cxx --disable-examples
	@$(MAKE) -C $(LIBCONFIG_VERSION)

$(BZIP2): $(BZIP2_SRC)
	@[ -d $(BZIP2_VERSION) ] || tar -xaf $<
	@cd $(BZIP2_VERSION)
	@$(MAKE) -C $(BZIP2_VERSION) CC=arm-none-eabi-gcc AR=arm-none-eabi-ar RANLIB=arm-none-eabi-ranlib CPPFLAGS="$(CPPFLAGS)" CFLAGS="-D_FILE_OFFSET_BITS=64 -Winline $(CFLAGS)" libbz2.a

$(XZ): $(XZ_SRC)
	@[ -d $(XZ_VERSION) ] || tar -xaf $<
	@cd $(XZ_VERSION) && \
	 ./configure --prefix=$(PORTLIBS) --host=arm-none-eabi --disable-shared --enable-static --disable-xz
	@$(MAKE) -C $(XZ_VERSION)

$(LIBARCHIVE): $(LIBARCHIVE_SRC)
	@[ -d $(LIBARCHIVE_VERSION) ] || tar -xaf $<
	@cd $(LIBARCHIVE_VERSION) && \
	 patch -Np1 -i ../libarchive.patch && \
	 ./configure --prefix=$(PORTLIBS) --host=arm-none-eabi --disable-shared --enable-static --without-nettle --without-openssl --without-xml2 --without-expat --without-iconv --disable-bsdtar --disable-bsdcpio --disable-acl
	@$(MAKE) -C $(LIBARCHIVE_VERSION)


$(NETTLE): $(NETTLE_SRC)
	@[ -d $(NETTLE_VERSION) ] || tar -xaf $<
	@cd $(NETTLE_VERSION) && \
	 ./configure --prefix=$(PORTLIBS) --host=arm-none-eabi --disable-shared --enable-static --disable-tools
	@$(MAKE) -C $(NETTLE_VERSION) libnettle.a

$(WSLAY): $(WSLAY_SRC)
	@[ -d $(WSLAY_VERSION) ] || tar -xaf $<
	@cd $(WSLAY_VERSION) && \
	 autoreconf -i && automake && autoconf && \
	 ./configure --prefix=$(PORTLIBS) --host=arm-none-eabi --disable-shared --enable-static
	@$(MAKE) -C $(WSLAY_VERSION)/lib


# Downloads
$(LIBCONFIG_SRC):
	wget -O $@ $(LIBCONFIG_DOWNLOAD)
$(ZLIB_SRC):
	wget -O $@ $(ZLIB_DOWNLOAD)
$(FREETYPE_SRC):
	wget -O $@ $(FREETYPE_DOWNLOAD)
$(LIBEXIF_SRC):
	wget -O $@ $(LIBEXIF_DOWNLOAD)
$(LIBJPEGTURBO_SRC):
	wget -O $@ $(LIBJPEGTURBO_DOWNLOAD)
$(LIBPNG_SRC):
	wget -O $@ $(LIBPNG_DOWNLOAD)
$(SQLITE_SRC):
	wget -O $@ $(SQLITE_DOWNLOAD)
$(MXML_SRC):
	wget -O $@ $(MXML_DOWNLOAD)
$(EXPAT_SRC):
	wget -O $@ $(EXPAT_DOWNLOAD)
$(LIBXML2_SRC):
	wget -O $@ $(LIBXML2_DOWNLOAD)
$(JANSSON_SRC):
	wget -O $@ $(JANSSON_DOWNLOAD)
$(PHYSFS_SRC):
	wget -O $@ $(PHYSFS_DOWNLOAD)
$(LIBMAD_SRC):
	wget -O $@ $(LIBMAD_DOWNLOAD)
$(LIBOGG_SRC):
	wget -O $@ $(LIBOGG_DOWNLOAD)
$(LIBVORBIS_SRC):
	wget -O $@ $(LIBVORBIS_DOWNLOAD)
$(GIFLIB_SRC):
	wget -O $@ $(GIFLIB_DOWNLOAD)
$(BZIP2_SRC):
	wget -O $@ $(BZIP2_DOWNLOAD)
$(XZ_SRC):
	wget -O $@ $(XZ_DOWNLOAD)
$(LIBARCHIVE_SRC):
	wget -O $@ $(LIBARCHIVE_DOWNLOAD)
$(NETTLE_SRC):
	wget -O $@ $(NETTLE_DOWNLOAD)
$(WSLAY_SRC):
	wget -O $@ $(WSLAY_DOWNLOAD)

install-zlib:
	@$(MAKE) -C $(ZLIB_VERSION) install

install:
	@[ ! -d $(FREETYPE_VERSION) ] || $(MAKE) -C $(FREETYPE_VERSION) install
	@[ ! -d $(LIBEXIF_VERSION) ] || $(MAKE) -C $(LIBEXIF_VERSION) install
	@[ ! -d $(LIBJPEGTURBO_VERSION) ] || $(MAKE) -C $(LIBJPEGTURBO_VERSION) install
	@[ ! -d $(LIBPNG_VERSION) ] || $(MAKE) -C $(LIBPNG_VERSION) install
	@[ ! -d $(SQLITE_VERSION) ] || $(MAKE) -C $(SQLITE_VERSION) install-libLTLIBRARIES install-data
	@[ ! -d $(MXML_VERSION) ] || $(MAKE) -C $(MXML_VERSION) install-libmxml.a
	@[ ! -d $(EXPAT_VERSION) ] || $(MAKE) -C $(EXPAT_VERSION) install
	@[ ! -d $(LIBXML2_VERSION) ] || $(MAKE) -C $(LIBXML2_VERSION) install
	@[ ! -d $(JANSSON_VERSION) ] || $(MAKE) -C $(JANSSON_VERSION) install
	@[ ! -d $(PHYSFS_VERSION) ] || $(MAKE) -C $(PHYSFS_VERSION) install
	@[ ! -d $(LIBMAD_VERSION) ] || $(MAKE) -C $(LIBMAD_VERSION) install
	@[ ! -d $(LIBOGG_VERSION) ] || $(MAKE) -C $(LIBOGG_VERSION) install
	@[ ! -d $(LIBVORBIS_VERSION) ] || $(MAKE) -C $(LIBVORBIS_VERSION) install
	@[ ! -d $(GIFLIB_VERSION) ] || $(MAKE) -C $(GIFLIB_VERSION) install
	@[ ! -d $(LIBCONFIG_VERSION) ] || $(MAKE) -C $(LIBCONFIG_VERSION) install
	@[ ! -d $(BZIP2_VERSION) ] || $(MAKE) -C $(BZIP2_VERSION) PREFIX="$(PORTLIBS)" install
	@[ ! -d $(XZ_VERSION) ] || $(MAKE) -C $(XZ_VERSION) install
	@[ ! -d $(LIBARCHIVE_VERSION) ] || $(MAKE) -C $(LIBARCHIVE_VERSION) install
	@[ ! -d $(NETTLE_VERSION) ] || $(MAKE) -C $(NETTLE_VERSION) install-static
	@[ ! -d $(WSLAY_VERSION) ] || $(MAKE) -C $(WSLAY_VERSION)/lib install

clean:
	@$(RM) -r $(FREETYPE_VERSION)
	@$(RM) -r $(LIBEXIF_VERSION)
	@$(RM) -r $(LIBJPEGTURBO_VERSION)
	@$(RM) -r $(LIBPNG_VERSION)
	@$(RM) -r $(SQLITE_VERSION)
	@$(RM) -r $(ZLIB_VERSION)
	@$(RM) -r $(MXML_VERSION)
	@$(RM) -r $(EXPAT_VERSION)
	@$(RM) -r $(LIBXML2_VERSION)
	@$(RM) -r $(JANSSON_VERSION)
	@$(RM) -r $(PHYSFS_VERSION)
	@$(RM) -r $(LIBMAD_VERSION)
	@$(RM) -r $(LIBOGG_VERSION)
	@$(RM) -r $(LIBVORBIS_VERSION)
	@$(RM) -r $(GIFLIB_VERSION)
	@$(RM) -r $(LIBCONFIG_VERSION)
	@$(RM) -r $(BZIP2_VERSION)
	@$(RM) -r $(XZ_VERSION)
	@$(RM) -r $(LIBARCHIVE_VERSION)
	@$(RM) -r $(NETTLE_VERSION)
	@$(RM) -r $(WSLAY_VERSION)
