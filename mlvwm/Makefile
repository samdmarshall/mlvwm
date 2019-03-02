
DEFINES =                        \
  -DVERSION=\"$(VERSION)\"       \
  -DCONFIGNAME=\"$(ConfigName)\" \
  -DMLVWMLIBDIR=\"$(libdir)\"    \
  -DUSE_LOCALE

CFLAGS +=                                            \
  $(shell pkg-config --cflags x11 xext xpm glib-2.0) \
  $(DEFINES)                                         \
  -I$(PWD)
  $(OTHER_CFLAGS)

LDFLAGS +=                                         \
  $(shell pkg-config --libs x11 xext xpm glib-2.0) \
  $(OTHER_LDFLAGS)

SRC =          \
  add_window.c \
  balloon.c    \
  borders.c    \
  config.c     \
  event.c      \
  functions.c  \
  menus.c      \
  misc.c       \
  wild.c       \
  mlvwm.c

export

OBJS := $(SRC:.c=.o)

all: $(TARGET)
$(TARGET):| $(OBJS)
	$(CC) $(OBJS) $(addprefix -Xclang ,$(CFLAGS)) $(addprefix -Xlinker ,$(LDFLAGS)) -o $@
clean:
	-rm -v $(TARGET) $(OBJS)
installdirs:
	mkdir -p {$(DESTDIR)$(bindir),$(DESTDIR)$(libdir)}
install: installdirs
	$(INSTALL_PROGRAM) $(TARGET) $(DESTDIR)$(bindir)/$(TARGET)
uninstall:
	rm -v $(DESTDIR)$(bindir)/$(TARGET)
.PHONY: all clean install installdirs uninstall
