all: 01-proses.pdf \
	 02-fork.pdf \
	 03-shell.pdf \
	 04-signal.pdf \
	 05-thread.pdf \
	 06-thread-sync.pdf \
	 07-intro-cli.pdf \
	 08-file.pdf \
	 08-permission-pipe.pdf \
	 09-text-process.pdf \
	 10-job-control.pdf \
	 11-shell-script.pdf \
	 12-misc.pdf

%.pdf: %.md
	pandoc -t beamer -o $@ $<

14-misc.pdf: 14-misc.md
	pandoc -t beamer -o $@ $< --latex-engine=xelatex

clean:
	rm -f *.pdf

.PHONY: all clean