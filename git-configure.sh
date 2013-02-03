#!/bin/sh
# setup the indent filter
git config filter.indent_c.clean 'uncrustify -c ./uncrustify_out.cfg -l C'
git config filter.indent_c.smudge 'uncrustify -c ./uncrustify_in.cfg -l C'
git config filter.indent_cpp.clean 'uncrustify -c ./uncrustify_out.cfg -l CPP'
git config filter.indent_cpp.smudge 'uncrustify -c ./uncrustify_in.cfg -l CPP'
