# vim: set ft=make :

#  {{{ root dir of org, html, epub

ROOT_ORGMODE = $(HOME)/racine/site/orgmode
ROOT_HTML    = $(HOME)/racine/site/html
ROOT_EPUB    = $(HOME)/racine/site/epub

#  }}}

#  {{{ local org & html dir

CUR_DIR  = $(shell pwd)
HTML_DIR = $(CUR_DIR:$(ROOT_ORGMODE)%=$(ROOT_HTML)%)
EPUB_DIR = $(CUR_DIR:$(ROOT_ORGMODE)%=$(ROOT_EPUB)%)

#  }}}

#  {{{ subdirs

SUBDIRS            = $(wildcard */)
HTML_SUBDIRS       = $(SUBDIRS:%=html-%)
EPUB_SUBDIRS       = $(SUBDIRS:%=epub-%)
CLEAN_SUBDIRS      = $(SUBDIRS:%=clean-%)
CLEAN_HTML_SUBDIRS = $(SUBDIRS:%=clean-html-%)
CLEAN_EPUB_SUBDIRS = $(SUBDIRS:%=clean-epub-%)
WIPE_SUBDIRS       = $(SUBDIRS:%=wipe-%)

#  }}}

#  {{{ files

HTML_FILES = $(patsubst %.org,%.html,$(wildcard *.org))
EPUB_FILES = $(patsubst %.org,%.epub,$(wildcard *.org))
CSS_FILES  = $(HTML)/style/defaut.css
INC_FILES  = $(wildcard $($(ROOT_ORGMODE)/include/*))

#  }}}

#  {{{ programs & options

ECHO  = echo

EMACS            = /usr/bin/emacs
EMACS_PRE_FLAGS  = --batch --file
EMACS_POST_FLAGS = -f org-html-export-to-html --kill 2> emacs.log

#--script=$(ROOT_ORGMODE)/script.el

DRY_RSYNC = rsync -n -au --delete --exclude-from=./rsync-html-exclude -vhi --progress
RSYNC     = rsync -au --delete --exclude-from=./rsync-html-exclude -vhi --progress

#  }}}
