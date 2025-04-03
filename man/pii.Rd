\name{pii}
\alias{pii}
\title{Predictive Information Index}
\description{
Computes PII between full model and score-based predictions.
}
\usage{
pii(full_preds, score_preds)
}
\arguments{
  \item{full_preds}{Predicted values from the full model.}
  \item{score_preds}{Predicted values from the score model.}
}
\value{
A numeric value between 0 and 1.
}
\examples{
full <- rnorm(100)
score <- full + rnorm(100, sd = 0.5)
pii(full, score)
}
