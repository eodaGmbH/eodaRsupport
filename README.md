---
title: "eodaRsupport"
author: "Martin Schneider"
date: "30 September 2016"
output: github_document
---

This Package is for assisting the eoda R-Support Team. 
Users should use the function `prepare_support`. Used on an Error throwing script, this function creates a html document including source code and its corresponding output.
Furthermore the function adds potential interesting information like session infos and environmental variables to the document.

Users should also add the function `reproduce_data` in there scripts, at the last possibly position before an error is thrown. When called the function will write R-Code to reproduce, all defined datasets.

To download this package, please use the following code.

```{r, eval = FALSE}
install.packages("devtools")
devtools::install_github()

```
