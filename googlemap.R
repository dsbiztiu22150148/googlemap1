d <- read.csv("campus_location_TIU.csv")
library(DT)
datatable(d)

library(leaflet)

leaflet() %>%
  addTiles() %>% 
  addMarkers(lng = d$lng, lat = d$lat,
             popup = paste0(d$name, '<br>', d$address)) %>% 
  addMiniMap(positio = 'topright') %>%
  addScaleBar(position="bottomleft")

