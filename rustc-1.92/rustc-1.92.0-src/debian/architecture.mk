# This Makefile snippet defines DEB_*_RUST_TYPE triples based on DEB_*_GNU_TYPE

include /usr/share/dpkg/architecture.mk

UBUNTU_VERSION_ID ?= $(shell . /etc/os-release 2>/dev/null && printf '%s' "$${VERSION_ID:-0}")
RUST_RISCV64_CPU := $(shell if dpkg --compare-versions "$(or $(UBUNTU_VERSION_ID),0)" ge 25.10; then echo riscv64a23; else echo riscv64gc; fi)

rust_cpu = $(subst i586,i686,\
$(if $(findstring -riscv64-,-$(2)-),$(subst riscv64,$(RUST_RISCV64_CPU),$(1)),\
$(if $(findstring -armhf-,-$(2)-),$(subst arm,armv7,$(1)),\
$(if $(findstring -armel-,-$(2)-),$(subst arm,armv5te,$(1)),\
$(1)))))
rust_type_setvar = $(1)_RUST_TYPE ?= $(call rust_cpu,$($(1)_GNU_CPU),$($(1)_ARCH))-unknown-$($(1)_GNU_SYSTEM)

$(foreach machine,BUILD HOST TARGET,\
  $(eval $(call rust_type_setvar,DEB_$(machine))))

# fallback for older dpkg versions
ifeq ($(DEB_TARGET_RUST_TYPE),-unknown-)
  DEB_TARGET_RUST_TYPE = $(DEB_HOST_RUST_TYPE)
endif
