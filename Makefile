DOCUMENT=RobertoDiRemigioCV

document:
	pdflatex ${DOCUMENT}.tex
	biber ${DOCUMENT}
	pdflatex ${DOCUMENT}.tex
	mv ${DOCUMENT}.pdf ${DOCUMENT}_`date +"%d%b%Y"`.pdf

clean:
	rm -f *~ *.aux *.idx *.log *.bbl *.lol *.lof *.lot *.blg *-blx.bib *.out
	rm -f *.backup *.brf *.toc *.bcf *.run.xml texput.log
	rm -f *.tdo *.nlo *.nls *.ilg *.acn *.glo *.glsdefs *.ist
	rm -f *.acr *.alg *.glg *.gls
