dots := $(subst .dot,.dot.eps, $(wildcard *.dot))
svgs := $(subst .svg,.svg.eps, $(wildcard *.svg))

all: $(dots) $(svgs)

clean:
	rm *eps

%.dot.eps: %.dot
	dot -Teps $< -o $@

%.svg.eps: %.svg
	inkscape --without-gui --export-eps=$@ $<
