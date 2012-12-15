# Makefile for lud
#

DEST_DIR =	/usr/local/bin

all:
	# Nothing to compile, run directly "make install" (as root)

install:
	install -m 555 src/lud_genudid.sh src/lud.sh src/unidecode.sed src/urlencode.sed $(DEST_DIR)
	install -m 444 src/lud_set.env src/lud_utils.env src/lud_generator.env $(DEST_DIR)

uninstall:
	rm -vf $(DEST_DIR)/lud_genudid.sh $(DEST_DIR)/lud.sh $(DEST_DIR)/unidecode.sed $(DEST_DIR)/urlencode.sed
	rm -vf $(DEST_DIR)/lud_*.env

