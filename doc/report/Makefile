LATEX=latex
DVIPS=dvips -Ppdf -ta4

PDFLATEX=pdflatex
THUMBPDF=thumbpdf

#TEXDEPS:=`ls *.tex | grep -v heatcontrol.tex | sed -e 's/\.tex$//'`

MAINDEPS:=introduction.tex specification.tex design.tex \
	design-verification.tex manufacturing.tex \
	product-verification.tex conclusions.tex \
	references.tex

DESIGNDEPS:=design-hw-mcu.tex design-hw-fhcu.tex \
	design-hw-ru.tex design-emb-sw.tex design-oper-sw.tex

DESIGNVERDEPS:=design-ver-hw.tex design-ver-emb-sw.tex \
	design-ver-oper-sw.tex

MANUFDEPS:=manufacturing-roomunits.tex manufacturing-centralunits.tex

#DISTILL=distill

all:	heatcontrol.pdf fixme
#	echo $(TEXDEPS)

clean:
	rm -f *~ *.log *.aux *.out *.toc *.tpt *.idx thumb*

cleanall:	clean
	rm -f *.dvi *.ps *.pdf

%.dvi:	%.tex
	$(LATEX) $<
	$(LATEX) $<

%.ps:	%.dvi
	$(DVIPS) $<

#$(TEXDEPS): $@.tex
#	touch $@

heatcontrol.tex:	$(MAINDEPS)

design.tex:	$(DESIGNDEPS)

design-verification.tex:	$(DESIGNVERDEPS)

manufacturing.tex:	$(MANUFDEPS)

%.pdf:	%.tex
	$(PDFLATEX) $<
	$(THUMBPDF) $@
	$(PDFLATEX) $<

#%.pdf:	%.ps
#	$(DISTILL) $<

fixme:
	@echo
	@grep --color -ni fixme *.tex
