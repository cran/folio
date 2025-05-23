% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/artefacts.R
\docType{data}
\name{shipwrecks}
\alias{shipwrecks}
\title{Mediterranean Shipwrecks}
\format{
A \code{data.frame} with 1784 observations (wrecks) and 13 variables:
\describe{
\item{name}{\code{\link{character}}: wreck name.}
\item{sea}{\code{\link{character}}: region of the sea where the wreck was discovered.}
\item{country}{\code{\link{character}}: country where the wreck was discovered.}
\item{region}{\code{\link{character}}: region where the wreck was discovered.}
\item{depth_min}{\code{\link{integer}}: minimum depth of the wreck (m).}
\item{depth_max}{\code{\link{integer}}: maximum depth of the wreck (m).}
\item{depth}{\code{\link{character}}: depth of the wreck (m).}
\item{period}{\code{\link{character}}: chronology (period).}
\item{dating}{\code{\link{character}}: chronology (dating).}
\item{date_early}{\code{\link{integer}}: earliest date.}
\item{date_late}{\code{\link{integer}}: latest date.}
\item{origin}{\code{\link{character}}: place of origin.}
\item{destination}{\code{\link{character}}: place of destination.}
}
}
\source{
Strauss, J. (2013). \emph{Shipwrecks Database}. Version 1.0. Accessed 2022-08-13.
URL: \url{https://oxrep.classics.ox.ac.uk/databases/shipwrecks_database/}
}
\usage{
shipwrecks
}
\description{
A dataset of Mediterranean shipwrecks.
}
\note{
This dataset contains typos and needs to be normalized.
}
\references{
Parker, A. J. (1992). \emph{Ancient Shipwrecks of the Mediterranean and the Roman
Provinces}. British Archaeological Reports International Series 580. Oxford.

Strauss, E. J. (2007). \emph{Roman Cargoes: Underwater Evidence from the Eastern
Mediterranean}. Doctoral thesis, University College London.
URL: \url{https://discovery.ucl.ac.uk/id/eprint/1349806}.
}
\seealso{
Other artefact data: 
\code{\link{munsingen}}
}
\concept{artefact data}
\keyword{datasets}
