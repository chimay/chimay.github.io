# vim: set ft=make :

include ../../Makefile.inc

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

%.html: %.org $(INC_FILES) ~/racine/musica/lilypond/templates/%.ly
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
