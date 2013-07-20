# Makefile for lud
#

DESTDIR :=
PREFIX := ${DESTDIR}/usr/local
BINDIR := ${PREFIX}/bin

all:
	@echo "Nothing to compile, run directly \"make install\""

${BINDIR}:
	mkdir -p ${BINDIR}

install: ${BINDIR}
	install -m 555 src/lud_genudid.sh src/lud.sh src/unidecode.sed src/urlencode.sed ${BINDIR}
	install -m 444 src/lud_set.env src/lud_utils.env src/lud_generator.env ${BINDIR}

uninstall:
	rm -vf ${BINDIR}/lud_genudid.sh ${BINDIR}/lud.sh ${BINDIR}/unidecode.sed ${BINDIR}/urlencode.sed
	rm -vf ${BINDIR}/lud_*.env

