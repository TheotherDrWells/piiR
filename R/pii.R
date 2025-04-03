#' Predictive Information Index
#'
#' Computes PII between full model and score-based predictions.
#'
#' @param full_preds Predicted values from the full model.
#' @param score_preds Predicted values from the score model.
#' @return A numeric value between 0 and 1.
#' @examples
#' full <- rnorm(100)
#' score <- full + rnorm(100, sd = 0.5)
#' pii(full, score)
#' @export
pii <- function(full_preds, score_preds) {
  1 - var(full_preds - score_preds) / var(full_preds)
}
