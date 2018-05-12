# Bart Data Visualization

### Chris Dong, Chengcheng Xu

[Web page](https://dongchris.github.io/bart-data-visualization/)

## Code

All of the code is in the root directory. 

`EDA.ipynb`: Bar chart showing the big picture and overview of the data.    
- plotly (Python)

`chord_diagram.R`: Chord diagram (the preprocessing is under `chord_plot.ipynb` and `reorder.xlsx`)    
- chorddiag (R package)    

`design_2_heatmap.ipynb`: Heatmap by hour of day and day of week    
- plotly (Python)   

`index.html`: website page    
`preprocessing_bart_{1,2,3}.ipynb`: Preparing and cleaning the raw data    
`reorder.xlsx`: Simple Excel functions to reorder stations, create dictionary mappings and clusters    
`small_multiple.ipynb`: Line chart for every possible station     
- plotly (Python)     

`visualization_circle_plot.ipynb`: Video by day of week, hour, year     
- Folium (Python)    

## Data

The raw data can be found under `/data_source`.     
Cleaned up data can be found under `/data`

## Slides

[Beta Presentation](https://github.com/dongchris/bart-data-visualization/blob/master/slides/Bart_4_26_Alpha.pdf)     
[Alpha Presentation](https://github.com/dongchris/bart-data-visualization/blob/master/slides/Bart_5_18_Beta.pdf)

## Miscellaneous

`design1/` consists of all the individual video files. JavaScript is used to control which videos get played.     
`templates/` consists of individual HTML files that `index.html` will refer to.
