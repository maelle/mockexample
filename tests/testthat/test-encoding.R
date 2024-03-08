test_that("is_encoding_a_pain() works on Linux", {
  local_mocked_bindings(Sys.info = function(...) c(sysname = "Linux"))
  expect_false(is_encoding_a_pain())
})

test_that("is_encoding_a_pain() works on Windows", {
  local_mocked_bindings(Sys.info = function(...) c(sysname = "Windows"))
  expect_true(is_encoding_a_pain())
})
