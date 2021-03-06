#' Spatial Data Science I: An Introduction to GIS using R and QGIS
#' Module 03  : INTRODUCTION TO GEOSPATIAL VECTOR DATA
#' Section 02 : Vector Data Format
#' @author inkiDATA


# Libraries ---------------------------------------------------------------
library(sf)
library(ggplot2)

# 1. I/O shapefile ------------------------------------------------------

nc_file <- "data/nc.shp"
nc_sf <- ______(nc_file) #read
_______(_______, "__________") # write


# 2. WKT example ----------------------------------------------------------

# first way
example_poly <- st_as_sfc("_____")

# second way (Recommended)
coordinates <- matrix(
  data = c(_____),
  ncol = 2, byrow = T
)
example_poly <- st_polygon(list(coordinates)) %>%
  list() %>%
  st_as_sfc()

# save as a shapefile
write_sf(example_poly, "data/wkt_example.shp")


# 3. Simple feature -------------------------------------------------------
nc_sf <- st_read("data/nc.shp")
print(nc_sf)
summary(nc_sf)

plot(nc_sf)

nc_sf %>%
  ggplot() +
  geom_sf(aes(fill = AREA)) +
  theme_bw() +
  scale_fill_continuous(type = "viridis")
