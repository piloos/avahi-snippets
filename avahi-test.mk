AVAHI_TEST_LICENSE = Barco
AVAHI_TEST_VERSION = HEAD
AVAHI_TEST_SITE = /home/lodco/avahi
AVAHI_TEST_SITE_METHOD = local
AVAHI_TEST_INSTALL_STAGING = YES
AVAHI_TEST_INSTALL_TARGET = NO

define AVAHI_TEST_BUILD_CMDS
  ( pushd $(@D) > /dev/null && \
  $(HOST_DIR)/usr/bin/x86_64-linux-g++ avahi-test.c -o avahi-test.o -lavahi-client -lavahi-common && \
  $(HOST_DIR)/usr/bin/x86_64-linux-g++ avahi-test2.c -o avahi-test2.o -lavahi-client -lavahi-common && \
  popd > /dev/null )
endef

$(eval $(generic-package))
