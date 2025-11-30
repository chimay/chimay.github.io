# vim: set ft=make :

include ../Makefile.inc

.DEFAULT_GOAL := all

#  phony {{{1

.PHONY: debug

.PHONY: html

.PHONY: dry-sync-html sync-html
.PHONY: dry-sync sync

.PHONY: all install

.PHONY: $(ALL_SUBDIRS)
.PHONY: $(CLEAN_SUBDIRS) $(CLEAN_ALL_SUBDIRS) $(WIPE_SUBDIRS)

.PHONY: clean clean-html wipe

# debug {{{1

debug:
	@echo $(SUBDIRS)

#  org -> html {{{1

~/racine/refer/bookmarks/%.html: ~/racine/refer/bookmarks/%.org
	$(MAKELINE) -C ~/racine/refer/bookmarks $@

%.html: %.org $(INC_FILES) ~/racine/refer/bookmarks/%.html
	$(EMACS) $(EMACS_PRE_FLAGS) $< $(EMACS_POST_FLAGS)
	remove-max-width-from-org-html-export.zsh $(patsubst %.org,%.html,$<)
	@$(ECHO)

html: $(ORG_HTML_FILES)

# sync -> html dir {{{1

sync-html: html
	$(RSYNC) $(CUR_DIR)/ $(HTML_DIR)
	@$(ECHO)

# all, install {{{1

$(ALL_SUBDIRS):
	$(MAKELINE) -C ${@:all-%=%} all
	@$(ECHO)

all: html $(ALL_SUBDIRS)

install : all sync-html

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
