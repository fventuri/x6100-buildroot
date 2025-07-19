################################################################################
#
#  JS8 text-only program
#
################################################################################

#FATE_VERSION = HEAD
FATE_VERSION = origin/main
FATE_SITE = https://github.com/rtmrtmrtmrtm/fate
FATE_SITE_METHOD = git
FATE_LICENSE = MIT
FATE_LICENSE_FILES = LICENSE
FATE_DEPENDENCIES = fftw-single libsndfile portaudio

define FATE_BUILD_CMDS
    $(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) fate
endef

define FATE_INSTALL_TARGET_CMDS
    $(INSTALL) -D -m 0755 $(@D)/fate  $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
