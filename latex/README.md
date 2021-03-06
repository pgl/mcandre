# Example LaTeX documents

# REQUIREMENTS

* `pdflatex`

## Optional

* [guard](http://guardgem.org/)
* `lacheck`

Install `guard` (requires [Ruby](https://www.ruby-lang.org/)):

    $ bundle

# DEVELOPMENT

## Build

    $ make fizzy.pdf

## Clean

    $ make clean

## Lint

    $ for f in *.tex; do lacheck $f; done

## Guard

Guard can monitor .tex files for changes, automatically recompiling them into PDFs.

    $ guard
    $ emacs .

Guard can also automatically lint .tex files.

    $ guard -G Guardfile-lint
    $ emacs .
