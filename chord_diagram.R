devtools::install_github("mattflor/chorddiag")
library(chorddiag)

library(tidyverse)
library(circlize)

## Loading Data
data = read_csv('data/matrix2017.csv')

data
m = data[,-1]

## Getting Station names
station_names = c(
  'Millbrae',
  'SFO',
  'San Bruno',
  'South San Francisco',
  'Colma',
  'Daly City',
  'Balboa Park',
  'Glen Park',
  '24th Street Mission',
  '16th Street Mission',
  'Civic Center',
  'Powell Street',
  'Montgomery Street',
  'Embarcadero',
  'Ashby',
  'Berkeley',
  'North Berkeley',
  'El Cerrito Plaza',
  'El Cerrito Del Norte',
  'Richmond',
  'West Oakland',
  '12th Street / Oakland City Center',
  '19th Street Oakland',
  'MacArthur',
  'Rockridge',
  'Orinda',
  'Lafayette',
  'Walnut Creek',
  'Pleasant Hill',
  'Concord',
  'North Concord',
  'Pittsburg/Bay Point',
  'Lake Merritt',
  'Fruitvale',
  'Coliseum',
  'Oakland International Airport',
  'San Leandro',
  'Bayfair',
  'Castro Valley',
  'West Dublin/Pleasanton',
  'Dublin/Pleasanton',
  'Hayward',
  'South Hayward',
  'Union City',
  'Fremont',
  'Warm Springs'
)

m = as.data.frame(m)

m

## Adding row and column names
dimnames(m) <- list(from = station_names,
                    to = station_names)
## Creating matrix
m = as.matrix(m)

m

## Adding colors
group_colors = c('#8dd3c7',
                  '#8dd3c7',
                  '#8dd3c7',
                  '#8dd3c7',
                  '#8dd3c7',
                  '#8dd3c7',
                  '#ffffb3',
                  '#ffffb3',
                  '#ffffb3',
                  '#ffffb3',
                  '#ffffb3',
                  '#ffffb3',
                  '#ffffb3',
                  '#ffffb3',
                  '#bebada',
                  '#bebada',
                  '#bebada',
                  '#bebada',
                  '#bebada',
                  '#bebada',
                  '#fb8072',
                  '#fb8072',
                  '#fb8072',
                  '#fb8072',
                  '#fb8072',
                  '#fb8072',
                  '#fb8072',
                  '#80b1d3',
                  '#80b1d3',
                  '#80b1d3',
                  '#80b1d3',
                  '#80b1d3',
                  '#fdb462',
                  '#fdb462',
                  '#fdb462',
                  '#fdb462',
                  '#fdb462',
                  '#fdb462',
                  '#fdb462',
                  '#fdb462',
                  '#fdb462',
                  '#b3de69',
                  '#b3de69',
                  '#b3de69',
                  '#b3de69',
                  '#b3de69')

## Creating chord diagram, will save as HTML
chorddiag(m, groupColors = group_colors,showTicks = F,groupnameFontsize = 9,
            height = 700, width = 700, groupnamePadding = 20, fadeLevel = 0.01,
          groupThickness = 0.01)


## Same as above but with aggregated matrix (46 stations -> 7 clusters)
data2 = read_csv('data/aggmatrix2017.csv')

data2
m2 = data2[,-1]

station_names2 = c('Millbrae-Daly City',
                   'San Francisco',
                   'Berkeley',
                   'Oakland',
                   'Walnut Creek-Pittsburg/Bay Point',
                   'Fruitvale-Dublin/Pleasanton',
                   'Fremont'
)

group_colors = c()


dimnames(mm22) <- list(from = station_names2,
                    to = station_names2)
m2 = as.matrix(m2)

chorddiag(m2, groupColors = group_colors,showTicks = F,groupnameFontsize = 9,
          height = 700, width = 700, groupnamePadding = 20, fadeLevel = 0.01,
          groupThickness = 0.01)
