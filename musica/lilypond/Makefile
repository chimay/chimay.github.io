# vim: set ft=make :

include ../../Makefile.inc

.DEFAULT_GOAL := all

#  phony {{{1

.PHONY: debug

.PHONY: lilypond-template

.PHONY: html

.PHONY: sync-html

.PHONY: all install

.PHONY: clean clean-html wipe

# debug {{{1

debug:
	@echo debug

# lilypond-template {{{1

lilypond-template: $(LY_TMPL_FILES) $(LY_MLD_FILES) $(LY_GLOB_FILES)
	$(MAKELINE) -C ~/racine/musica/lilypond/template install

# sync -> html dir {{{1

sync-html: lilypond-template
	$(RSYNC) $(CUR_DIR)/ $(HTML_DIR)
	@$(ECHO)

# all, install {{{1

all: lilypond-template

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
