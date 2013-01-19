#!/bin/sh

filestoindent=$( find . -type f -iname "*.h" -or -iname "*.hh" -or -iname "*.hpp" -or -iname "*.hxx" -or -iname "*.c" -or -iname "*.cc" -or -iname "*.cpp" -or -iname "*.cxx" )
for filetoindent in $filestoindent
do
	uncrustify -c ./uncrustify_in.cfg --no-backup  $filetoindent
	git add $filetoindent
	git commit -m "indenting..."
done
