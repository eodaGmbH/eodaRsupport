#' create file with code for reproduced data to send to eoda R Support
#'
#' @return creates r file "reproduced_data.R" in working directory
#'
#' @examples
#' reproduce_data()
#'
#' @export
reproduce_data <- function() {
  sapply(ls(envir = .GlobalEnv),function(x){
    write(recreate_object(x), file = "reproduced_data.R", append = TRUE)
  })
}
