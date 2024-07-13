library(reticulate)
library(plumber)

options("plumber.port" = 7000)

#* @png 
#* @get /plot
function() {
  barplot(1:10, col = "red")
}