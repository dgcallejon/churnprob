context("Correct Output")

test_that("highest prob always higher than min", {
  expect_true(Churn_prob_function(newdata1, "15662641") < Churn_prob_function(newdata1, "15653251"))
})

devtools::test()
