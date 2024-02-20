#' @title CNV analysis of multiple genes in pancancer.
#' @author Zaoqu Liu; E-mail: liuzaoqu@163.com
#' @param genes A vector with multiple genes.
#' @param heatmap.colors Colors for the heatmap.
#' @param Cor.abs.cutoff Absolute cutoff value of correlation coefficient.
#' @param P.cutoff Cutoff value of P value.
#' @param data.path The path where the downloaded data is stored.
#' @param delete Whether to delete the downloaded file.
#' @export
TCGA.Pan.MG.CNV <- function(
    genes,
    heatmap.colors = c("#4D76B7", "#F2F2F2", "#D02E20"),
    Cor.abs.cutoff = 0.3,
    P.cutoff = 0.05,
    data.path = ".",
    delete = TRUE) {
  myfun <- synGet2("syn53642233")
  myfun2 <- myfun(
    genes = genes,
    heatmap.colors = heatmap.colors,
    Cor.abs.cutoff = Cor.abs.cutoff,
    P.cutoff = P.cutoff,
    data.path = data.path,
    delete = delete
  )
  return(myfun2)
}

#' @title CNV analysis of multiple genes in pancancer.
#' @author Zaoqu Liu; E-mail: liuzaoqu@163.com
#' @param gene Your gene.
#' @param colors Colors for positive, negative and not significant.
#' @param text.digit Digits of text.
#' @param text.x.position.just X position justification of text.
#' @param data.path The path where the downloaded data is stored.
#' @param delete Whether to delete the downloaded file.
#' @export
TCGA.Pan.SG.CNV <- function(
    gene,
    colors = c("#ED6355", "#41A98E", "grey"),
    text.digit = 3,
    text.x.position.just = 0.34,
    data.path = ".",
    delete = TRUE) {
  myfun <- synGet2("syn53642319")
  myfun2 <- myfun(
    gene = gene,
    colors = colors,
    text.digit = text.digit,
    text.x.position.just = text.x.position.just,
    data.path = data.path,
    delete = delete
  )
  return(myfun2)
}
