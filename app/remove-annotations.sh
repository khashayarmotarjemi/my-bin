echo $1
pdftk "$1" output uncompressed.pdf uncompress
LANG=C sed -n '/^\/Annots/!p' uncompressed.pdf > stripped.pdf
pdftk stripped.pdf output "$1" compress
