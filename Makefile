%.tex: %.md
	pandoc -i $< -t latex --listings --template=template.tex -o $@

%.pdf: %.tex
	xelatex -halt-on-error $<
