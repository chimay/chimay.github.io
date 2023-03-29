# vim: set ft=make :

include ../Makefile.inc

.DEFAULT_GOAL := sync-html

#  {{{  phony

.PHONY: html
.PHONY: epub

.PHONY: all install
.PHONY: clean clean-html clean-epub wipe

#  }}}

#  {{{  org -> html

html:
	@$(ECHO) nothing to do

#  }}}

#  {{{  org -> epub

epub:
	@$(ECHO) nothing to do

#  }}}

# all, install {{{1

all: sync-html

install: sync-html

# }}}1

# clean, wipe {{{1

$(CLEAN_SUBDIRS):
	$(MAKE) -C ${@:clean-%=%} clean
	@$(ECHO)

$(CLEAN_HTML_SUBDIRS):
	$(MAKE) -C ${@:clean-html-%=%} clean-html
	@$(ECHO)

$(CLEAN_EPUB_SUBDIRS):
	$(MAKE) -C ${@:clean-epub-%=%} clean-epub
	@$(ECHO)

$(WIPE_SUBDIRS):
	$(MAKE) -C ${@:wipe-%=%} wipe
	@$(ECHO)

clean: $(CLEAN_SUBDIRS)
	rm -f ?*~

clean-html: $(CLEAN_HTML_SUBDIRS)
	rm -f ?*.html
	rm -f ?*~

clean-epub: $(CLEAN_EPUB_SUBDIRS)
	rm -f ?*.epub
	rm -f ?*~

wipe: $(WIPE_SUBDIRS)
	rm -f ?*.html
	rm -f ?*.epub
	rm -f ?*~

# }}}1
