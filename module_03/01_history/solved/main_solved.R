#' Spatial Data Science I: An Introduction to GIS using R and QGIS
#' 
#' @description Module 03: INTRODUCTION TO GEOSPATIAL VECTOR DATA
#' @author inkiData

# source('functions.R')

# 1. Package to install ------------------------------------------------------
spatial_packages = c('sf', 'raster', 'stars', 'lwgeom')


# 2. Install Packages from CRAN ----------------------------------------------
install.packages(spatial_packages)


# 3. Load libraries -------------------------------------------------------

library(sf)
library(raster)
library(stars)

