# piiR

**piiR** provides a clean, standalone implementation of the Predictive Information Index (PII), a post-measurement metric designed to quantify how well a score predicts an outcome compared to a full model.

Version 0.3.0 includes only the canonical scoring functions and visualization tool. All non-canonical or experimental features have been removed.

---

## Installation

```r
install.packages("piiR")  # From CRAN
```

What is PII?
The Predictive Information Index (PII) quantifies the utility of a score relative to the full predictive model. It answers the question:

How much information does this score preserve from the full model when predicting an outcome?

PII can be computed using three methods:

"r2": squared correlation ratio (R²-based)

"rm": root-mean-squared error ratio

"v": predicted value variance ratio



## pii()
```r
pii(y, score_pred, full_pred, type = "r2")
```
y: observed outcome

score_pred: predictions from your score-based model

full_pred: predictions from the full model

type: one of "r2", "rm", or "v"

Returns a single PII value between 0 and 1.

## pii_plot()
Visualizes score vs. outcome prediction alignment.

```r
pii_plot(y, score_pred, full_pred)
```

## Example
```r
set.seed(123)
y     <- rnorm(100)
full  <- y + rnorm(100, sd = 0.2)
score <- y + rnorm(100, sd = 0.5)

pii(y, score, full, type = "r2")
pii_plot(y, score, full)
```
## Reference
Wells (2025). Predictive Information Index (PII): A model-agnostic utility metric for post-measurement evaluation. https://github.com/TheotherDrWells/piiR
