



find . -name \*.html -type f | \
    (while read file; do
        #iconv -f ISO-8859-1 -t UTF-8 "$file" > "${file%.xxx}-utf8.xxx";
        echo $file
        iconv -f KOI8-R -t UTF-8 "$file" > "$file.new"  &&
        mv -f "$file.new" "$file"
    done);

