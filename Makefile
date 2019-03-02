
VERSION = 0.9.0
TARGET = mlvwm
ConfigName = $(TARGET)rc

CFLAGS = -x c -g -Wall -Wshadow -Wno-unused-command-line-argument
LDFLAGS = -g

prefix ?= $(HOME)/.local
bindir ?= $(prefix)/bin
libdir ?= $(prefix)/lib
mandir ?= $(prefix)/share/man

INSTALL_PROGRAM = $(INSTALL)
INSTALL_DATA = $(INSTALL) -m 644
export

SUBDIRS = man mlvwm

all: $(SUBDIRS)
clean: $(SUBDIRS)
installdirs: $(SUBDIRS)
install: installdirs $(SUBDIRS)
uninstall: $(SUBDIRS)
$(SUBDIRS):
	cd $@ && $(MAKE) $(MAKECMDGOALS) $(MAKEFLAGS)

.PHONY: all clean install installdirs uninstall $(SUBDIRS)
