sed '
1i\
#set text(size: 35pt)\
#set page(margin: 3pt)\
#show heading: set align(center)\
#show heading.where(level: 1): it => { pagebreak(weak: true); it }

s/#/=/g
' src/*.md | typst compile - docs/lgpsi_largetext.pdf
