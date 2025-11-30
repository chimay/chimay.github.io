# vim: set ft=make :

# root dir of generic, html {{{1

ROOT_GENERIC := $(HOME)/racine/public/eclats2vers/generic
ROOT_HTML    := $(HOME)/racine/public/eclats2vers/html

# local generic & html dir {{{1

CUR_DIR  = $(shell pwd)
HTML_DIR = $(CUR_DIR:$(ROOT_GENERIC)%=$(ROOT_HTML)%)

# subdirs {{{1

SUBDIRS                =  $(wildcard */)

ALL_SUBDIRS            =  $(SUBDIRS:%=all-%)

CLEAN_SUBDIRS          =  $(SUBDIRS:%=clean-%)
CLEAN_HTML_SUBDIRS     =  $(SUBDIRS:%=clean-html-%)
WIPE_SUBDIRS           =  $(SUBDIRS:%=wipe-%)

# files {{{1

ORG_FILES        =  $(wildcard *.org)
ORG_HTML_FILES   =  $(ORG_FILES:.org=.html)

TEX_FILES        =  $(wildcard *.tex)
TEX_PDF_FILES    =  $(TEX_FILES:.tex=.pdf)
TEX_SVG_FILES    =  $(TEX_FILES:.tex=.svg)

CSS_FILES          =  $(wildcard $(ROOT_GENERIC)/style/*.css)
INC_FILES          =  $(wildcard $(ROOT_GENERIC)/include/*.org)
INC_LATEX_FILES    =  $(wildcard $(ROOT_GENERIC)/include/latex/*.*)
INC_MATHJAX_FILES  =  $(wildcard $(ROOT_GENERIC)/include/mathjax/*.*)

# ORG_HTML_FILES = $(patsubst %.org,%.html,$(wildcard *.org))

# files in ~/racine/musica/lilypond/template

LY_TMPL_FILES = $(wildcard ~/racine/musica/lilypond/template/*.ly)
LY_MLD_FILES = $(wildcard ~/racine/musica/lilypond/template/melody/*.ly)
LY_GLOB_FILES = $(wildcard ~/racine/musica/lilypond/template/global/*.ly)

LY_TMPL_PNG = $(wildcard $(ROOT_GENERIC)/image/musica/template/*.png)

# programs & options {{{1

MAKELINE = $(if $(MAKEFLAGS),$(MAKE) -$(MAKEFLAGS),$(MAKE))

ECHO  = echo

EMACS            = /usr/bin/emacs
EMACS_PRE_FLAGS  =
EMACS_POST_FLAGS = --batch -f org-html-export-to-html --kill 2> emacs.log

DRY_RSYNC = rsync -n -au --delete --exclude-from=./rsync-html-exclude -vhi --progress
RSYNC     = rsync -au --delete --exclude-from=./rsync-html-exclude -vhi --progress
