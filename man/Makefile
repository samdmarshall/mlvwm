
SRCS = mlvwm.rst
OBJS = $(SRCS:rst=1)

%.1 : %.rst
	pandoc $^ --from=rst --columns=80 --to=man --output=$@
all: $(TARGET)
$(TARGET): $(OBJS)
clean:
	-rm -v $(TARGET).1
installdirs:
	mkdir -p $(DESTDIR)$(mandir)
install: installdirs
	$(INSTALL_DATA) $(TARGET).1 $(DESTDIR)$(mandir)/$(TARGET).1
uninstall:
	rm -v $(DESTDIR)$(mandir)/$(TARGET).1
.PHONY: all clean install installdirs uninstall $(TARGET)
