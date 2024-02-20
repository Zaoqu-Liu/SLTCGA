#' @title Survival analysis of multiple genes in pancancer.
#' @author Zaoqu Liu; E-mail: liuzaoqu@163.com
#' @param genes A vector with multiple genes.
#' @param sur.type Type of survival infomation. OS, DFS, DSS, and PFS.
#' @param colors Colors for Not Significant, Protective and Risky.
#' @param P.cutoff Cutoff value of P value.
#' @param ... Additional parameters for Heatmap function.
#' @param data.path The path where the downloaded data is stored.
#' @param delete Whether to delete the downloaded file.
#' @export
TCGA.Pan.MG.Sur <- function(
    genes,
    sur.type = "OS",
    colors = c("#F2F2F2", "#4D76B7", "#D02E20"),
    P.cutoff = 0.05,
    ..., # For Heatmap function
    data.path = ".",
    delete = TRUE) {
  myfun <- synGet2("syn53641694")
  myfun2 <- myfun(
    genes = genes,
    sur.type = sur.type,
    colors = colors,
    P.cutoff = P.cutoff,
    ..., # For Heatmap function
    data.path = data.path,
    delete = delete
  )
  return(myfun2)
}

#' @title Survival analysis of multiple genes in pancancer.
#' @author Zaoqu Liu; E-mail: liuzaoqu@163.com
#' @param gene Your gene.
#' @param plot.type Type of the plot; classic or simple.
#' @param sur.type Type of survival infomation. OS, DFS, DSS, and PFS.
#' @param colors Colors for Risky, Not Significant and Protective.
#' @param rel.width Relative width of four columns.
#' @param data.path The path where the downloaded data is stored.
#' @param delete Whether to delete the downloaded file.
#' @export
TCGA.Pan.SG.Sur <- function(
    gene,
    plot.type = "classic", # classic or simple
    sur.type = "OS",
    colors = c("#ED6355", "grey", "#41A98E"),
    rel.width = c(0.5, 1.4, 1.2, 0.6),
    data.path = ".",
    delete = TRUE) {
  myfun <- synGet2("syn53641818")
  myfun2 <- myfun(
    gene = gene,
    plot.type = plot.type, # classic or simple
    sur.type = sur.type,
    colors = colors,
    rel.width = rel.width,
    data.path = data.path,
    delete = delete
  )
  return(myfun2)
}
