#!/bin/bash

svgpath='./fig/svg'
pdfpath='./fig/import'

for svgname in ${svgpath}/*.svg
do
figname="${svgname%.*}"
figname_withoutpath="${figname##*/}"
pdfname="${pdfpath}/${figname_withoutpath}.pdf"
inkscape -T ${svgname} -A ${pdfname}
echo "convert ${svgname} -> ${pdfname}"
done