#' create code for reproduced data
#'
#' @return string with code to recreate data
#'
#' @examples
#' recreate_object("mtcars")
recreate_object <- function(x) {
  paste(x,
        "<-",
        paste(deparse(dput(eval(parse(text = x)))), collapse = ""))

}
