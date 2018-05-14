SHELL := /bin/bash

build: linux unix windows
	@true

linux:
	@curl -s https://raw.githubusercontent.com/rebootuser/LinEnum/master/LinEnum.sh > linux/enumeration/LinEnum.sh
	@curl -s https://raw.githubusercontent.com/mzet-/linux-exploit-suggester/master/linux-exploit-suggester.sh > linux/enumeration/linux-exploit-suggester.sh
	@curl -s https://raw.githubusercontent.com/pentestmonkey/perl-reverse-shell/master/perl-reverse-shell.pl > linux/shells/perl-reverse-shell.pl

unix:
	@curl -s https://raw.githubusercontent.com/pentestmonkey/unix-privesc-check/1_x/unix-privesc-check > unix/enumeration/unix-privesc-check.sh

windows:
	@curl -s https://github.com/pentestmonkey/windows-privesc-check/blob/master/windows-privesc-check2.exe?raw=true > windows/enumeration/windows-privesc-check2.exe


.PHONY: build linux unix windows
