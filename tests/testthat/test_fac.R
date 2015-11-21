context("Building factors")

test_that("fac turns a numeric vector to a factor with levels in correct order", {
  x <- c(1,6,5,3,2)

  expect_identical(class(fac(x)), "factor")
  expect_identical(levels(fac(x)), as.character(x))
})

test_that("fac turns a char vector to a factor with levels in correct order", {
  x <- c("a", "c", "d", "b")

  expect_identical(class(fac(x)), "factor")
  expect_identical(levels(fac(x)), x)
})

test_that("fac turns a vector with duplicate items to a factor", {
  x <- c("a", "c", "d", "b", "b", "c")
  a <- c("a", "c", "d", "b")

  expect_identical(class(fac(x)), "factor")
  expect_identical(levels(fac(x)), a)
})

test_that("fac handels null or non-vector input", {
  a <- NULL
  b <- factor(c(1,2))

  expect_error(fac(a))
  expect_error(fac(b))
})
