################################################################################
#
#  A version of RADAE which doesn't require python
#
################################################################################

#RADAE_NOPY_VERSION = HEAD
RADAE_NOPY_VERSION = origin/main
RADAE_NOPY_SITE = https://github.com/peterbmarks/radae_nopy
RADAE_NOPY_SITE_METHOD = git
RADAE_NOPY_LICENSE = BSD-2-Clause
RADAE_NOPY_LICENSE_FILES = LICENSE

#RADAE_NOPY_INSTALL_STAGING = YES

define RADAE_NOPY_INSTALL_WAVFILES
	$(INSTALL) -d $(TARGET_DIR)/root/radae
	$(INSTALL) -m 0644 $(RADAE_NOPY_SRCDIR)/*.wav $(TARGET_DIR)/root/radae/
	$(INSTALL) -m 0644 $(RADAE_NOPY_SRCDIR)/wav/*.wav $(TARGET_DIR)/root/radae/
endef
RADAE_NOPY_POST_INSTALL_TARGET_HOOKS += RADAE_NOPY_INSTALL_WAVFILES

$(eval $(cmake-package))
