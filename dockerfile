FROM rocker/rstudio:4.4.2


# Install remotes and cowsay
RUN R -e "install.packages('remotes')" && \
    R -e "remotes::install_version('cowsay', version = '1.0.0')"

#  Run cowsay when the container starts
#CMD R -e "library(cowsay); say('Hello from Docker!', by = 'cow')"

