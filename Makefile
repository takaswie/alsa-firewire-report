all: image view

view: firewire.pdf
	evince firewire.pdf

%.pdf:	%.tex
	latex $<
	latex $<
	dvipdfmx $*

image:
	$(MAKE) --directory=img

clean:
	rm ./img/*eps
	rm firewire.aux
	rm firewire.dvi
	rm firewire.log
	rm firewire.toc
	rm firewire.pdf

jp:	image
	platex firewire-jp.tex
	platex firewire-jp.tex
	dvipdfmx firewire-jp
