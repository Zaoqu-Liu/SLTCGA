#' @title Expression analysis of multiple genes in pancancer.
#' @author Zaoqu Liu; E-mail: liuzaoqu@163.com
#' @param genes A vector with multiple genes.
#' @param logFC.cutoffs Cutoffs of logFC.
#' @param logFC.labels Labels of logFC cutoffs.
#' @param logFC.colors Colors of logFC cutoffs.
#' @param Select.P Which P value will be the determinant of significance. NP or FDR.
#' @param Heatmap.cluster Whether to cluster the heatmap.
#' @param ... Additional parameters for Heatmap function.
#' @param data.path The path where the downloaded data is stored.
#' @param delete Whether to delete the downloaded file.
#' @export
TCGA.Pan.MG.Expr <- function(
    genes,
    logFC.cutoffs = c(-Inf, -2, -1, -0.5, 0.5, 1, 2, Inf),
    logFC.labels = c(
      "< -2", "-2 - -1", "-1 - -0.5",
      "-0.5 - 0.5", "0.5 - 1", "1 - 2", "> 2"
    ),
    logFC.colors = c(
      "#2166ac", "#4393c3", "#92c5de",
      "#e5e5e5", "#f4a582", "#d6604d", "#b2182b"
    ),
    Select.P = "NP", # NP or FDR
    Heatmap.cluster = FALSE,
    ..., # For Heatmap function
    data.path = ".",
    delete = TRUE) {
  myfun <- synGet2("syn53641086")
  myfun2 <- myfun(
    genes = genes,
    logFC.cutoffs = logFC.cutoffs,
    logFC.labels = logFC.labels,
    logFC.colors = logFC.colors,
    Select.P = Select.P, # NP or FDR
    Heatmap.cluster = Heatmap.cluster,
    ..., # For Heatmap function
    data.path = data.path,
    delete = delete
  )
  return(myfun2)
}

#' @title Expression analysis of single gene in pancancer.
#' @author Zaoqu Liu; E-mail: liuzaoqu@163.com
#' @param gene Your gene.
#' @param plot.type Type of the plot; violin or box.
#' @param colors colors for normal and tumor groups.
#' @param add.cancer.without.normalSample Whether to add cancer types without normal samples.
#' @param ... Additional parameters for Heatmap function.
#' @param data.path The path where the downloaded data is stored.
#' @param delete Whether to delete the downloaded file.
#' @export
TCGA.Pan.SG.Expr <- function(
    gene,
    plot.type = "violin", # violin or box
    colors = c("#41A98E", "#ED6355"),
    add.cancer.without.normalSample = FALSE,
    ...,
    data.path = ".",
    delete = FALSE) {
  myfun <- synGet2("syn53641552")
  myfun2 <- myfun(
    gene = gene,
    plot.type = plot.type,
    colors = colors,
    add.cancer.without.normalSample = add.cancer.without.normalSample,
    ...,
    data.path = data.path,
    delete = delete
  )
  return(myfun2)
}
