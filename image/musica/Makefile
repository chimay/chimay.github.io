# vim: set ft=make :

include ../../Makefile.inc

.DEFAULT_GOAL := sync-html

#  phony {{{1

.PHONY: debug

.PHONY: html

.PHONY: all install
.PHONY: clean clean-html wipe

# debug {{{1

debug:
	@echo $(SUBDIRS)


#  org -> html {{{1

html:
	$(ECHO) nothing to do
	@$(ECHO)


# sync -> html dir {{{1

dry-sync-html: html
	$(DRY_RSYNC) $(CUR_DIR)/ $(HTML_DIR)
	@$(ECHO)

sync-html: html
	$(RSYNC) $(CUR_DIR)/ $(HTML_DIR)
	@$(ECHO)


#sync all {{{1

dry-sync: dry-sync-html

sync: sync-html

# all, install, clean, wipe {{{1

all: sync-html

install: sync-html

clean:
	rm -f ?*~

clean-html:
	rm -f ?*.html
	rm -f ?*~

wipe:
	rm -f ?*.html
	rm -f ?*~
