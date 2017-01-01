#xenial image
FROM ubuntu:16.04 

#tools to manage repositories
RUN apt-get update && apt-get install -y software-properties-common wget

#add repo for R from CRAN
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
RUN add-apt-repository 'deb [arch=amd64,i386] https://cran.rstudio.com/bin/linux/ubuntu xenial/'

#need this for the new repo to properly update
RUN apt-get install -y apt-transport-https

#update to get latest version of R
RUN apt-get update

#install R and texinfo for latex
RUN apt-get install -y r-base texinfo texlive texlive-fonts-extra

#install components of bioconductor
RUN Rscript -e "source('https://bioconductor.org/biocLite.R');biocLite(c('stats','utils','BMA','Rcpp','RcppArmadillo','RcppEigen','BH','leaps'),ask=FALSE)"

