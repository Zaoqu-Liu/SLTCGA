% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Pan-Meth-Analysis.R
\name{TCGA.Pan.MG.Meth}
\alias{TCGA.Pan.MG.Meth}
\title{Methylation analysis of multiple genes in pancancer.}
\usage{
TCGA.Pan.MG.Meth(
  genes,
  type = "promoter",
  heatmap.colors = c("#BB61A1", "#F2F2F2", "#7EC09A"),
  Cor.abs.cutoff = 0.3,
  P.cutoff = 0.05,
  data.path = ".",
  delete = TRUE
)
}
\arguments{
\item{genes}{A vector with multiple genes.}

\item{type}{Type of methylation sites; global or promoter.}

\item{heatmap.colors}{Colors for the heatmap.}

\item{Cor.abs.cutoff}{Absolute cutoff value of correlation coefficient.}

\item{P.cutoff}{Cutoff value of P value.}

\item{data.path}{The path where the downloaded data is stored.}

\item{delete}{Whether to delete the downloaded file.}
}
\description{
Methylation analysis of multiple genes in pancancer.
}
\author{
Zaoqu Liu; E-mail: liuzaoqu@163.com
}
