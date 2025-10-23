# vim: set ft=make :

include ../Makefile.inc

.DEFAULT_GOAL := all

#  phony {{{1

.PHONY: debug

.PHONY: html

.PHONY: sync-html

.PHONY: $(ALL_SUBDIRS)
.PHONY: all install

.PHONY: $(CLEAN_SUBDIRS) $(CLEAN_HTML_SUBDIRS) $(WIPE_SUBDIRS)

.PHONY: clean clean-html wipe

# debug {{{1

debug:
	@echo $(SUBDIRS)

# sync -> html dir {{{1

sync-html: $(ALL_SUBDIRS)
	$(RSYNC) $(CUR_DIR)/ $(HTML_DIR)
	@$(ECHO)

# all, install {{{1

$(ALL_SUBDIRS):
	$(MAKELINE) -C ${@:all-%=%} all
	@$(ECHO)

all: html $(ALL_SUBDIRS)

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
