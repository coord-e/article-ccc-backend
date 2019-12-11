FROM paperist/alpine-texlive-ja:2018

RUN tlmgr install algorithms algorithmicx siunitx bibexport

RUN apk add --no-cache graphviz ttf-dejavu

WORKDIR /workdir
