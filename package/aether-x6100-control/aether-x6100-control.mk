################################################################################
#
#  Aether-Radio's X6100 base control library
#
################################################################################

AETHER_X6100_CONTROL_VERSION = v0.15.8
AETHER_X6100_CONTROL_SITE = https://github.com/gdyuldin/X6100Control
AETHER_X6100_CONTROL_SITE_METHOD = git
AETHER_X6100_CONTROL_LICENSE = GPLv2

AETHER_X6100_CONTROL_INSTALL_STAGING = YES

$(eval $(cmake-package))
