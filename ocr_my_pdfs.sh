#! /bin/bash -x

for x in todo/*.pdf; do
    echo "processing $(realpath $x)"
    name=$(basename "$x" .pdf)
    ocrmypdf --oversample 600 --clean --deskew "$x" "fixed/${name}_fixed.pdf"
done