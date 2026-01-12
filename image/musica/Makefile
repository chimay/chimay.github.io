# vim: set ft=make :

include ../../Makefile.inc

.DEFAULT_GOAL := all

#  phony {{{1

.PHONY: debug

.PHONY: lilypond-install

.PHONY: sync-html

.PHONY: all install

.PHONY: $(CLEAN_SUBDIRS) $(CLEAN_HTML_SUBDIRS) $(WIPE_SUBDIRS)

.PHONY: clean clean-html wipe

# debug {{{1

debug:
	@echo coucou

# lilypond-install {{{1

lilypond-install:
	$(MAKELINE) -C ~/racine/musica/lilypond/template install

# sync -> html dir {{{1

sync-html:
	$(RSYNC) $(CUR_DIR)/ $(HTML_DIR)
	@$(ECHO)

# all, install {{{1

all: lilypond-install

install: all sync-html

# clean, wipe {{{1

clean:
	rm -f ?*~
	remove-obsolete-targets.zsh +org -html

clean-html:
	rm -f ?*.html
	rm -f ?*~

wipe:
	rm -f ?*.html
	rm -f ?*~
