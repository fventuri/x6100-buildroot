################################################################################
#
#  X6100 GUI application
#
################################################################################

X6100_GUI_VERSION = v0.30.2-CM3
X6100_GUI_SITE = https://github.com/wicknix/x6100_gui
X6100_GUI_SITE_METHOD = git
X6100_GUI_GIT_SUBMODULES = YES
X6100_GUI_LICENSE = GPLv2

X6100_GUI_INSTALL_STAGING = YES

X6100_GUI_DEPENDENCIES = rhvoice libpng aether-x6100-control ft8lib libsndfile-with-lame-and-mpg123

define X6100_GUI_APPLY_PATCHES
        $(APPLY_PATCHES) $(@D) $(addsuffix /$(X6100_GUI_RAWNAME),$(call qstrip,$(BR2_GLOBAL_PATCH_DIR))) \*.patch
endef
X6100_GUI_POST_RSYNC_HOOKS += X6100_GUI_APPLY_PATCHES

$(eval $(cmake-package))
