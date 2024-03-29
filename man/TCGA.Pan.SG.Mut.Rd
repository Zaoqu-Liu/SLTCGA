% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Pan-Mut-Analysis.R
\name{TCGA.Pan.SG.Mut}
\alias{TCGA.Pan.SG.Mut}
\title{Mutation analysis of multiple genes in pancancer.}
\usage{
TCGA.Pan.SG.Mut(
  gene,
  plot.type = "bar",
  add.rate.label = TRUE,
  count.colors = c("#003c30", "#01665e", "#35978f", "#80cdc1", "#c7eae5", "#f6e8c3",
    "#dfc27d", "#bf812d", "#8c510a", "#543005"),
  doughnut.nrow = 4,
  rate.label.digits = 2,
  rate.cutoffs = c(0, 0.01, 0.03),
  rate.labels = c("None", "< 1\%", "1\%-3\%", "> 3\%"),
  rate.colors = c("#36519f", "#9bbfe4", "#ec7828", "firebrick3"),
  data.path = ".",
  delete = TRUE
)
}
\arguments{
\item{gene}{Your gene.}

\item{plot.type}{Type of the plot; doughnut or bar.}

\item{add.rate.label}{bar parameter; Whether to add rate labels.}

\item{count.colors}{Colors of mutational counts.}

\item{doughnut.nrow}{doughnut parameter; Number rows of doughnut plot.}

\item{rate.label.digits}{doughnut parameter; Digits for rate labels.}

\item{rate.cutoffs}{doughnut parameter; Cutoffs of rate.}

\item{rate.labels}{doughnut parameter; Labels of rate cutoffs.}

\item{rate.colors}{doughnut parameter; Colors of rate cutoffs.}

\item{data.path}{The path where the downloaded data is stored.}

\item{delete}{Whether to delete the downloaded file.}
}
\description{
Mutation analysis of multiple genes in pancancer.
}
\author{
Zaoqu Liu; E-mail: liuzaoqu@163.com
}
