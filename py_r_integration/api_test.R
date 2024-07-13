library(plumber)
library(reticulate)

py_file <- "D:/Projects/R/py_r_integration/test1.py"

api <- Plumber$new()
api$registerHooks(list(use_python("D:/python39/Scripts/clear_comtypes_cache.py")))

#* @apiPost("/")
function(){
  py <- import("")
  output <- py$run_script(test1.py)
  return(output)
}

api$run(port = 8000)


use