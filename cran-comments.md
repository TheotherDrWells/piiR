## CRAN submission: piiR 0.2.1

This patch fixes a variant-mapping bug in the `pii()` function:
* `type = "rm"` and `type = "v"` were previously reversed.
* These have now been swapped back to match the published PII definitions.
* Examples and documentation have been updated.
* Unit tests ensure each variant returns the expected value.

There are no API additions or removals. No reverse dependencies are affected.

Thanks for reviewing.
