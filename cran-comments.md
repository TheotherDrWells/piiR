## CRAN submission comments for piiR

This is the initial submission of the `piiR` package to CRAN.

The `piiR` package provides tools for computing the Predictive Information Index (PII), which quantifies how much outcome-relevant information is retained when reducing a multivariate predictor set to a composite score (e.g., sum or mean). This is useful for evaluating the trade-offs of simplified scoring approaches in psychometrics, education, and applied research.

---

## R CMD check results

I have run R CMD check using:

- ✅ **Windows** (local R 4.4.2, UTF-8)
- ✅ **macOS-latest** (via GitHub Actions)
- ✅ **Ubuntu-latest** (via GitHub Actions)

All R CMD checks passed with:
- No errors ❌
- No warnings ⚠️
- No notes 📝

Except:
- A common note about unverified timestamps
- A harmless warning about the knitr vignette engine not being registered on macOS/Windows — this does not affect vignette functionality

---

## Reverse Dependencies

This is a new package with no known reverse dependencies.