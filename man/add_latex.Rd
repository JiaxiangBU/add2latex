% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/add_latex.R
\name{add_latex}
\alias{add_latex}
\title{Quick paste a LaTex object}
\usage{
add_latex(type = c("bmatrix", "alignat", "more"), is_paste = TRUE)
}
\arguments{
\item{type}{The type of equations in Latex to choose.}

\item{is_paste}{Whether to paste in the clipboard.}
}
\description{
Quick paste a LaTex object
}
\examples{
\dontrun{add_latex('bmatrix')}
\dontrun{add_latex('alignat')}
\dontrun{add_latex('more')}
}
\author{
Jiaxiang Li
}
