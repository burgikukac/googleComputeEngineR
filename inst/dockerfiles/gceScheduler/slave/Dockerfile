FROM rocker/verse
MAINTAINER Mark Edmondson (r@sunholo.com)

# install R package dependencies
RUN apt-get update && apt-get install -y \
    ## clean up
    && apt-get clean \ 
    && rm -rf /var/lib/apt/lists/ \ 
    && rm -rf /tmp/downloaded_packages/ /tmp/*.rds

## Install packages from CRAN
RUN install2.r --error \ 
    -r 'http://cran.rstudio.com' \
    googleComputeEngineR googleCloudStorageR googleAnalyticsR searchConsoleR bigQueryR \
    && Rscript -e "devtools::install_github('MarkEdmondson1234/googleAuthR')" \
    ## clean up
    && rm -rf /tmp/downloaded_packages/ /tmp/*.rds

