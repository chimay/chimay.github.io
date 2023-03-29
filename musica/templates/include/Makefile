# vim: set ft=make :

include ../../../Makefile.inc

.DEFAULT_GOAL := sync-html

#  {{{  phony

.PHONY: all install
.PHONY: clean clean-html clean-epub wipe

.PHONY: html
.PHONY: epub

#  }}}

#  {{{  org -> html

$(HTML_SUBDIRS):
	$(MAKE) -C ${@:html-%=%} html
	@$(ECHO)

%.html: %.org $(INC_FILES)
	$(EMACS) $(EMACS_PRE_FLAGS) $< $(EMACS_POST_FLAGS)
	remove-max-width-from-org-html-export.zsh $(patsubst %.org,%.html,$<)
	@$(ECHO)

html: $(HTML_SUBDIRS) $(HTML_FILES)

#  }}}

#  {{{  org -> epub

$(EPUB_SUBDIRS):
	$(MAKE) -C ${@:epub-%=%} epub
	@$(ECHO)

%.epub: %.org $(INC_FILES)
	pandoc -t epub $< -o $(<:.org=.epub) 2> pandoc.log
	@$(ECHO)

epub: $(EPUB_SUBDIRS) $(EPUB_FILES)

#  }}}

# all, install, clean, wipe {{{1

#all: $(HTML_FILES) $(EPUB_FILES)
all: $(HTML_FILES) sync-html

install: sync

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
