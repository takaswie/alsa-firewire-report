all: image view

view: firewire.pdf
	evince firewire.pdf

%.pdf:	%.tex
	latex $<
	dvipdfmx $*

image:
	$(MAKE) --directory=img

clean:
	rm ./img/*eps
	rm firewire.aux
	rm firewire.dvi
	rm firewire.log
	rm firewire.pdf
