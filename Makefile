.DEFAULT_GOAL = help

CHAPTERS = \
	Chapters/Chapter1/chapter1 \
	Chapters/Chapter2/chapter2 \


# Redirect to bootstrap makefile if pillar is not found
PILLAR ?= $(wildcard pillar)
ifeq (,$(PILLAR))
	include support/makefiles/bootstrap.mk
else
	include support/makefiles/main.mk
endif
