pandoc -s --toc --template=templates/default.latex -o lgpsi.tex src/title.txt $(ls -1 src/*.md)
xelatex lgpsi.tex
# Twice because TOC
xelatex lgpsi.tex
mv lgpsi.pdf docs/
rm lgpsi.{log,aux,toc,tex}
