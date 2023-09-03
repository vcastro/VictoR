#' Label data using a named list
#'
#' @param df data to label
#' @param labels a named list
#'
#' @return a dataframe
#' @export
#'
#' @examples
#' df <- data.frame(a = c(1,2,3), b=c(4,5,6), c=c(7,8,9))
#' labels <- list(a = "col 1", b = "col 2", c = "col 3")
#' new_df <- label_data(df, labels)
label_data <- function(df, labels) {
  if (!all(names(labels) %in% names(df))) {
    stop("At least one label does not exist in the data.")
  }

  for (i in names(labels)) {
    attr(df[, i], "label") <- labels[[which(names(labels) == i)]]
  }

  df
}
