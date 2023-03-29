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

# all, install, clean, wipe {{{1

all: sync-html

install: sync-html

clean:
	rm -f ?*~

clean-html:
	rm -f ?*.html
	rm -f ?*~

clean-epub:
	rm -f ?*.epub
	rm -f ?*~

wipe:
	rm -f ?*.html
	rm -f ?*.epub
	rm -f ?*~

# }}}1
