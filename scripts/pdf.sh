pandoc -s --toc --template=templates/default.latex -o lgpsi.tex title.txt $(ls -1 src/*.md)
xelatex lgpsi.tex
# Twice because TOC
xelatex lgpsi.tex
rm lgpsi.{log,aux,toc,tex}
