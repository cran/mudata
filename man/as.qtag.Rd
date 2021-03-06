% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/qtag.R
\name{as.qtag}
\alias{as.qtag}
\alias{qtag}
\title{Convert an object to a qualifier/tag structure}
\usage{
as.qtag(df, id.vars = NA, measure.vars = NA, tag.vars = NA,
  quiet = FALSE)

qtag(df, ...)
}
\arguments{
\item{df}{A \code{data.frame} or similar object}

\item{id.vars}{Column names of qualifying measure.vars (NA to guess)}

\item{measure.vars}{Column names containing the values of interest (NA to guess)}

\item{tag.vars}{Column names of tag values}

\item{quiet}{Use \code{quiet=TRUE} to suppress error messages}

\item{...}{Passed to/from methods}
}
\value{
An object of type \code{qtag}, which is essentially the unchanged
  input with id.vars, measure.vars, and tag.vars information attached.
}
\description{
A qualifer/tag structure is an experimental version of a data frame
that stores id.vars and measure.vars with the data structure, so it
can be handled in a more automatic way. This functionality is experimental.
}
\examples{
data("pocmaj")
pocmaj <- as.qtag(pocmaj, id.vars = c("core", "depth"))
long(pocmaj)
aggregate(pocmaj)
aggregate(long(pocmaj))

}
