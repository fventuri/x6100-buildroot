################################################################################
#
#  X6100 GUI
#
################################################################################

X6100_WEBSERVER_VERSION = v0.0.4
X6100_WEBSERVER_SITE = https://github.com/gdyuldin/x6100_webserver
X6100_WEBSERVER_SITE_METHOD = git
X6100_WEBSERVER_LICENSE = GPLv2
X6100_WEBSERVER_DEPENDENCIES = python-bottle-sqlite
X6100_WEBSERVER_SETUP_TYPE = flit

$(eval $(python-package))
