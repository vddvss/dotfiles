# Copyright 2019 Colin Samples
#
# SPDX-License-Identifier: Apache-2.0
#

CFLAGS := -Wall -Wextra -O2

prefix := /usr/local
libexecdir := $(prefix)/libexec

num2circlednum: num2circlednum.c
	$(CC) $(CFLAGS) $< -o $@

reformat-status-flags: reformat_status_flags.c
	$(CC) $(CFLAGS) $< -o $@

.DEFAULT_GOAL := all
.PHONY: all
all: num2circlednum reformat-status-flags

.PHONY: install
install: num2circlednum reformat-status-flags
	install -d $(DESTDIR)$(libexecdir)
	install $^ -t $(DESTDIR)$(libexecdir)

.PHONY: clean
clean:
	rm -f num2circlednum reformat-status-flags

