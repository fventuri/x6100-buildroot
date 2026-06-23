################################################################################
#
#  Aether-Radio's X6100 base control library
#
################################################################################

FT8LIB_VERSION = 73b0db861dc41c7ca9f3dedc73ee148daa06dd0e
FT8LIB_SITE = https://github.com/gdyuldin/ft8_lib
FT8LIB_SITE_METHOD = git
FT8LIB_LICENSE = MIT

FT8LIB_INSTALL_STAGING = YES

FT8LIB_CFLAGS = -O3 -I.
FT8LIB_LDFLAGS = -lm

define FT8LIB_BUILD_CMDS
    #$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)
    $(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) \
		CFLAGS="$(FT8LIB_CFLAGS)" LDFLAGS="$(FT8LIB_LDFLAGS)"
endef

define FT8LIB_INSTALL_STAGING_CMDS
    mkdir -p $(STAGING_DIR)/usr/include/ft8lib/
    $(INSTALL) -D -m 0755 $(@D)/.build/libft8.so $(STAGING_DIR)/usr/lib
    $(INSTALL) -D -m 0644 $(@D)/ft8/*.h $(STAGING_DIR)/usr/include/ft8lib/
endef

define FT8LIB_INSTALL_HOST_CMDS
endef

define FT8LIB_INSTALL_TARGET_CMDS
    $(INSTALL) -D -m 0755 $(@D)/.build/libft8.so  $(TARGET_DIR)/usr/lib
    $(INSTALL) -D -m 0755 $(@D)/.build/decode_ft8  $(TARGET_DIR)/usr/bin
    $(INSTALL) -D -m 0755 $(@D)/.build/decode_ft8_live  $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
