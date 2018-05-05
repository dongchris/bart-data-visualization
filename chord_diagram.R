devtools::install_github("mattflor/chorddiag")
library(chorddiag)

library(tidyverse)
library(circlize)
data = read_csv('matrix2017.csv')
m = data[,-1]
m
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


dimnames(m) <- list(from = station_names,
                    to = station_names)
m = as.matrix(m)

m

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
chorddiag(m, groupColors = group_colors,showTicks = F,groupnameFontsize = 9,
            height = 700, width = 700, groupnamePadding = 10)
