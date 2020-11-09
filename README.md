# A LaTeX Template for Thesis

This is modern LaTeX template for thesis for English and japanese.
This template only works in UNIX environment
(need shell script for build).
If you use windows, you must convert
`.svg` file to `.pdf` file manually (then put the `.pdf` file in `fig/import` directory). 
If you write your thesis in English, you can choose pdfTeX or LuaTeX for TeX engine.
However, if you write your thesis in Japanese, you can choose only LuaTeX for TeX engine.

# Requirement

TeX system is necessarily needed. I tested on TeXLive 2020.

* TeXLive 2020 (full-scheme recommended)

For converting `.svg` file to `.pdf` file,
you must install

* inkscape
* bash (to run shell script)

If you use `llmk` for typeset,  you need to install also

* llmk (https://github.com/wtsnjp/llmk)

In windows environment, you must convert `.svg` file to `.pdf` file manually
(then put the `.pdf` file in `fig/import` directory). 
,
and you must delate a step `shell` in `llmk.toml`.

# Build the document

For building the document, move directory in which `thesis.tex` is,
then run below commands on your terminal:

```sh
bash svg2pdf.sh # convert .svg file to .pdf file
lua(pdf)latex thesis.tex
biber thesis.bcf
lua(pdf)latex thesis.tex
lua(pdf)latex thesis.tex
```

If you use `llmk` for build, you should run only below command:

```sh
texlua (path to llmk.lua)
``` 

If you convert `.svg` file to `.pdf` file manually, you should run below command on your terminal:

```sh
lua(pdf)latex thesis.tex
biber thesis.bcf
lua(pdf)latex thesis.tex
lua(pdf)latex thesis.tex
```

or rewrite part of

```toml
sequence = ["shell", "latex", "biblatex", "latex", "latex"]
```

to

```toml
sequence = ["latex", "biblatex", "latex", "latex"]
```

in `llmk.toml` if you use `llmk` (namely, delate "shell").

# Licence

This template is distributed under MIT licence, see LICENCE.