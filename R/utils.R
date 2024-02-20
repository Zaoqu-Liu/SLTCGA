globalVariables(
  c(
    "Cluster", "Details", "Gene", "Group", "ID", "Synapse_ID", "Tumor",
    "available.data", "available.mRNAs", "var", "Cor", "Type", "label",
    "HR.95H", "HR", "HR.95L", "HRS", "Plabel", "k", "count", "percentage",
    "ymax", "ymin", "labelPosition", "Count", "G1", "G2", "Percent"
  )
)

.onAttach <- function(libname, pkgname) {
  suppressPackageStartupMessages(library(tidyverse))
  suppressPackageStartupMessages(library(patchwork))
  suppressPackageStartupMessages(library(ComplexHeatmap))
  suppressPackageStartupMessages(library(synapser))
}


#' @importFrom dplyr %>%
#' @export
#'
dplyr::`%>%`


#' @noRd
synGet2 <- function(synid) {
  file <- synapser::synGet(synid, downloadLocation = NULL, downloadFile = TRUE)
  d <- source(file$path)$value
  file.remove(file$path)
  return(d)
}
