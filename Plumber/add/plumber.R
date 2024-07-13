library(plumber)
library(reticulate)

myenvs=conda_list()
print(myenvs)
envname=myenvs$name[6]
print(envname)

#use_condaenv(envname, required = TRUE)

options("plumber.port" = 5000)

#* @get /random_numbers
#* @param maxn
function(maxn) {
  maxn<-as.numeric(maxn)
  runif(1,min=0,max=maxn)
}

#* @post /hello_dsw
function() {
  print("entered")
  string="Hi DSW"
  return (string)
}

# test2.bat
