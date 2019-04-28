for file in src/*.md
do
  output=${file%.md}.html
  output=docs/${output#src/}
  pandoc -s --template=templates/default.html -o $output $file
done
