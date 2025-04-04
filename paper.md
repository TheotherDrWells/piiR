---
title: "piiR: An R Package for the Predictive Information Index"
authors:
  - name: Kevin E. Wells
    orcid: 0000-0001-6929-4332
    affiliation: 1
affiliations:
  - name: The University of Southern Mississippi
    index: 1
date: 2025-04-03
bibliography: paper.bib
---

# Summary

In psychological, educational, and social research, composite scores such as mean or sum scores are often used to simplify multivariate constructs into single indicators. However, such simplification can come at the cost of predictive utility. The `piiR` package implements the **Predictive Information Index (PII)**, a statistic that quantifies how much outcome-relevant information is preserved (or lost) when a set of predictors is reduced to a composite score.

The PII is defined as:

$$
\text{PII} = 1 - \frac{\text{Var}(\hat{Y}_{\text{Full}} - \hat{Y}_{\text{Score}})}{\text{Var}(\hat{Y}_{\text{Full}})}
$$

where $\hat{Y}_{\text{Full}}$ are predictions from a full model using all predictors, and $\hat{Y}_{\text{Score}}$ are predictions from a reduced model using only the score.

# Statement of Need

There is growing awareness that unit-weighted scores may fail to capture the information contained in item-level or predictor-level data. While several alternatives exist—such as regression-based weights or factor scores—there is little guidance on how to evaluate the trade-off between simplicity and predictive fidelity. `piiR` fills this gap by offering a flexible, intuitive, and easily interpretable way to evaluate scoring practices.

# Features

- Compute the Predictive Information Index from model predictions
- Compare multiple scoring approaches for the same outcome
- Visualize PII across scores or subgroups
- Permutation-based significance testing
- Classification metrics and pseudo-$R^2$ summaries
- Works with any outcome type (continuous or binary)

# Example

```r
library(piiR)
set.seed(123)
full <- rnorm(100)
score <- full + rnorm(100, sd = 0.5)
pii(full, score)
#> [1] 0.72
```

# Acknowledgements

Development was informed by methodological needs in educational and psychological measurement and benefited from feedback across multiple empirical studies.

# References

```bibtex
@article{pii2025,
  title = {Predictive Information Index: Quantifying Information Loss in Score Compression},
  author = {Wells, Kevin E.},
  year = {2025},
  journal = {Unpublished manuscript},
  note = {Manuscript submitted for peer review}
}
```
