#' create file to send to eoda R Support
#'
#' @param rfile character string standalone R script which produces Error
#'
#' @return creates html file with same name of rfile in working directory
#'
#' @examples
#' prepare_support("test_file.R")
#'
#' @export
prepare_support <- function(rfile) {

  # add lines to rfile
  cat("sessionInfo()", "options()", file = rfile, append = TRUE, sep = "\n")

  # create html notebook
  knitr::spin(rfile, precious = FALSE)

  file.remove(gsub(".R", ".md", basename(rfile)))

}
