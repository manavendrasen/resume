FROM pandoc/latex:latest

RUN tlmgr update --self && tlmgr install sectsty lastpage helvetic ragged2e preprint wrapfig marvosym wasysym capt-of lipsum titlesec enumitem cfr-lm nfssext-cfr svn-prov fontawesome fontawesome5 tcolorbox environ tikzfill pdfcol listingsutf8 mwe lato fontaxes xkeyval silence

ENTRYPOINT ["pdflatex"]