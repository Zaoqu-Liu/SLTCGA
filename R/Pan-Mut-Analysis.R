#' @title Mutation analysis of multiple genes in pancancer.
#' @author Zaoqu Liu; E-mail: liuzaoqu@163.com
#' @param genes A vector with multiple genes.
#' @param heatmap.colors Colors for the heatmap.
#' @param ... Additional parameters for Heatmap function.
#' @param data.path The path where the downloaded data is stored.
#' @param delete Whether to delete the downloaded file.
#' @export
TCGA.Pan.MG.Mut <- function(
    genes,
    heatmap.colors = c("#FFFFFF", "#fef0d9", "#fdcc8a", "#fc8d59", "#e34a33", "#b30000"),
    ..., # for Heatmap function
    data.path = ".",
    delete = TRUE) {
  myfun <- synGet2("syn53641630")
  myfun2 <- myfun(
    genes = genes,
    heatmap.colors = heatmap.colors,
    ..., # for Heatmap function
    data.path = data.path,
    delete = delete
  )
  return(myfun2)
}

#' @title Mutation analysis of multiple genes in pancancer.
#' @author Zaoqu Liu; E-mail: liuzaoqu@163.com
#' @param gene Your gene.
#' @param plot.type Type of the plot; doughnut or bar.
#' @param add.rate.label bar parameter; Whether to add rate labels.
#' @param count.colors Colors of mutational counts.
#' @param doughnut.nrow doughnut parameter; Number rows of doughnut plot.
#' @param rate.label.digits doughnut parameter; Digits for rate labels.
#' @param rate.cutoffs doughnut parameter; Cutoffs of rate.
#' @param rate.labels doughnut parameter; Labels of rate cutoffs.
#' @param rate.colors doughnut parameter; Colors of rate cutoffs.
#' @param data.path The path where the downloaded data is stored.
#' @param delete Whether to delete the downloaded file.
#' @export
TCGA.Pan.SG.Mut <- function(
    gene,
    plot.type = "bar", # doughnut or bar
    add.rate.label = TRUE,
    count.colors = c(
      "#003c30", "#01665e", "#35978f", "#80cdc1", "#c7eae5",
      "#f6e8c3", "#dfc27d", "#bf812d", "#8c510a", "#543005"
    ),
    doughnut.nrow = 4,
    rate.label.digits = 2,
    rate.cutoffs = c(0, 0.01, 0.03),
    rate.labels = c("None", "< 1%", "1%-3%", "> 3%"),
    rate.colors = c("#36519f", "#9bbfe4", "#ec7828", "firebrick3"),
    data.path = ".",
    delete = TRUE) {
  myfun <- synGet2("syn53641566")
  myfun2 <- myfun(
    gene = gene,
    plot.type = plot.type, # doughnut or bar
    add.rate.label = add.rate.label,
    count.colors = count.colors,
    doughnut.nrow = doughnut.nrow,
    rate.label.digits = rate.label.digits,
    rate.cutoffs = rate.cutoffs,
    rate.labels = rate.labels,
    rate.colors = rate.colors,
    data.path = data.path,
    delete = delete
  )
  return(myfun2)
}
