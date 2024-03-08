is_encoding_a_pain <- function(){
  if (Sys.info()[["sysname"]] == "Windows"){
    return(TRUE)
  }

  FALSE
}

# https://testthat.r-lib.org/reference/local_mocked_bindings.html#base-functions
Sys.info <- NULL
