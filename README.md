# piiR <img src="https://img.shields.io/badge/CRAN-submitted-blue" alt="CRAN badge" align="right" height="30"/>

`piiR` is an R package for computing the **Predictive Information Index (PII)** — a statistic that quantifies how much outcome-relevant information is retained when compressing a set of predictors into a composite score (like a sum or mean).

It is designed to help researchers assess the trade-offs of using simplified scoring methods instead of full multivariate models.

## 📦 Installation

You can install the development version from GitHub:

```r
# install.packages("devtools")
devtools::install_github("TheotherDrWells/piiR")
```

Once accepted to CRAN:

```r
install.packages("piiR")
```

## ✨ Features

- Compute PII using predicted values from full and score-based models
- Compare composite scores (e.g., sum, factor scores, ML models)
- Visualize PII across outcomes
- Includes permutation testing and classification diagnostics

## 🧪 Example

```r
library(piiR)

# Simulated predictions
set.seed(123)
full_model_preds <- rnorm(100)
score_preds <- full_model_preds + rnorm(100, sd = 0.5)

pii(full_model_preds, score_preds)
```

## 📖 Learn More

For more information and worked examples, see the vignette:

```r
vignette("piiR_intro")
```

## 📜 License

MIT © Kevin E. Wells, 2025

## ✏️ Citation

If you use `piiR`, please cite:

> Wells, K. E. (2025). *The Predictive Information Index (PII): Evaluating Outcome-Relevant Information Loss from Score Reduction.* (In preparation).
