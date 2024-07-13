library(quantmod)
library(reticulate)

use_condaenv("C:/Users/Rahil/anaconda3/envs/test_env")

setwd("D:/Projects/R/Plumber/add")

print("Started ..../n")
print("Library loaded ..../n")
stk = getSymbols("SKY", from="2020-01-01", auto.assign = FALSE)
print("getting data ..../n")
print("Making a csv file ..../n")
write.zoo(stk, file="D:/Projects/R/Plumber/add/file.csv", sep=",")
print("csv created ..../n")

