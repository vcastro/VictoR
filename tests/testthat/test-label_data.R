test_that("labeling works", {
  df <- data.frame(a = c(1,2,3), b=c(4,5,6), c=c(7,8,9))
  labels <- list(a = "col 1", b = "col 2", c = "col 3")
  new_df <- label_data(df, labels)
  expect_equal(attr(new_df$a, "label"), "col 1")
})
