context("Dectecting characters")

test_that("is_char checks characters", {
  x <- c("a","c","b","e")
  x_fact <- factor(x)
  expect_true(is_char(x_fact))
})

test_that("is_char checks non-characters", {
  x <- c(1,3,5,4,1,6)
  x_fact <- factor(x)
  expect_false(is_char(x_fact))
})

test_that("is_char checks non-factor input", {
  x <- c("a","b","c","d","e")
  expect_error(is_char(x))
})
