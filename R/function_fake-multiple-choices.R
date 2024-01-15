fake_multiple_choice <- function(choices, n, probs = NULL){
  sample(choices, replace = TRUE, size = n, prob = probs) |>
    writeClipboard()
  message("Results written to clipboard")
}

fake_multiple_choice(
  choices = c("None", "One", "Two", "Three", "Four", "Five or more"),
  probs = c(0.3, 1, 1.1, 0.7, 0.7, 0.3),
  n = 71
)


fake_multiple_choice(
  choices = c("None", "One", "Two", "Three", "Four", "Five or more"),
  probs = c(0.01, 0.1, 0.5, 0.8, 0.8, 0.7),
  n = 71
)
