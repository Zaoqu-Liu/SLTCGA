% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Pan-CNV-Analysis.R
\name{TCGA.Pan.MG.CNV}
\alias{TCGA.Pan.MG.CNV}
\title{CNV analysis of multiple genes in pancancer.}
\usage{
TCGA.Pan.MG.CNV(
  genes,
  heatmap.colors = c("#4D76B7", "#F2F2F2", "#D02E20"),
  Cor.abs.cutoff = 0.3,
  P.cutoff = 0.05,
  data.path = ".",
  delete = TRUE
)
}
\arguments{
\item{genes}{A vector with multiple genes.}

\item{heatmap.colors}{Colors for the heatmap.}

\item{Cor.abs.cutoff}{Absolute cutoff value of correlation coefficient.}

\item{P.cutoff}{Cutoff value of P value.}

\item{data.path}{The path where the downloaded data is stored.}

\item{delete}{Whether to delete the downloaded file.}
}
\description{
CNV analysis of multiple genes in pancancer.
}
\author{
Zaoqu Liu; E-mail: liuzaoqu@163.com
}
