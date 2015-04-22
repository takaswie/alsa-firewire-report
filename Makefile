all: image view

view: controls.pdf
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
	rm controls.aux
	rm controls.dvi
	rm controls.log
	rm controls.toc
	rm controls.pdf

jp:	image
	platex firewire-jp.tex
	platex firewire-jp.tex
	dvipdfmx firewire-jp

controls: image
	platex controls.tex
	platex controls.tex
	dvipdfmx controls
