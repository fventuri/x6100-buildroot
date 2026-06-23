################################################################################
#
#  Common backend code shared by FreeDV projects
#
################################################################################

#FREEDV_BACKEND_VERSION = HEAD
FREEDV_BACKEND_VERSION = origin/main
FREEDV_BACKEND_SITE = https://github.com/tmiw/freedv-backend
FREEDV_BACKEND_SITE_METHOD = git
FREEDV_BACKEND_LICENSE = BSD-2-Clause
FREEDV_BACKEND_LICENSE_FILES = LICENSE

#FREEDV_BACKEND_INSTALL_STAGING = YES

$(eval $(cmake-package))
