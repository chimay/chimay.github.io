# vim: set ft=make :

include ../../Makefile.inc

.DEFAULT_GOAL := all

.PRECIOUS: ../../image/musica/template/%.png

#  phony {{{1

.PHONY: debug

.PHONY: html

.PHONY: lilypond-install

.PHONY: sync-html

.PHONY: $(ALL_SUBDIRS)
.PHONY: all install

.PHONY: $(CLEAN_SUBDIRS) $(CLEAN_HTML_SUBDIRS) $(WIPE_SUBDIRS)

.PHONY: clean clean-html wipe

# debug {{{1

debug:
	@echo $(SUBDIRS)

# lilypond {{{1

lilypond-install:
	$(MAKELINE) -C ~/racine/musica/lilypond/template install

../../image/musica/template/%.png: ~/racine/musica/lilypond/template/%.pdf
	$(MAKELINE) -C ~/racine/musica/lilypond/template install
	#convert $< $@
	@$(ECHO)

#  org -> html {{{1

%.html: %.org $(INC_FILES) ../../image/musica/template/%.png ~/racine/musica/lilypond/template/%.ly
	$(EMACS) $(EMACS_PRE_FLAGS) $< $(EMACS_POST_FLAGS)
	remove-max-width-from-org-html-export.zsh $(patsubst %.org,%.html,$<)
	@$(ECHO)

html: $(ORG_HTML_FILES)

# sync -> html dir {{{1

sync-html: html $(ALL_SUBDIRS)
	$(RSYNC) $(CUR_DIR)/ $(HTML_DIR)
	@$(ECHO)

# all, install {{{1

$(ALL_SUBDIRS):
	$(MAKELINE) -C ${@:all-%=%} all
	@$(ECHO)

all: lilypond-install html $(ALL_SUBDIRS)

install: all sync-html

# clean, wipe {{{1

$(CLEAN_SUBDIRS):
	$(MAKELINE) -C ${@:clean-%=%} clean
	@$(ECHO)

$(CLEAN_HTML_SUBDIRS):
	$(MAKELINE) -C ${@:clean-html-%=%} clean-html
	@$(ECHO)

$(WIPE_SUBDIRS):
	$(MAKELINE) -C ${@:wipe-%=%} wipe
	@$(ECHO)

clean: $(CLEAN_SUBDIRS)
	rm -f ?*~

clean-html: $(CLEAN_HTML_SUBDIRS)
	rm -f ?*.html
	rm -f ?*~

wipe: $(WIPE_SUBDIRS)
	rm -f ?*.html
	rm -f ?*~
