% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/isotopes.R
\docType{data}
\name{lisiecki2005}
\alias{lisiecki2005}
\title{Global Benthic \eqn{\delta^{18}O}{\delta18O} Stack}
\format{
A \code{data.frame} with 2115 observations and 3 variables:
\describe{
\item{age}{\code{\link{numeric}}: calendar age (kilo year cal BP).}
\item{delta}{\code{\link{numeric}}: benthic \eqn{\delta^{18}O}{\delta18O} (per mil).}
\item{error}{\code{\link{numeric}}: standard error (per mil).}
}
}
\source{
\url{https://www.ncei.noaa.gov/access/paleo-search/study/5847}
}
\usage{
lisiecki2005
}
\description{
A global Pliocene-Pleistocene benthic \eqn{\delta^{18}O}{\delta18O} stack.
}
\details{
The LR04 stack spans 5.3 Myr and is an average of 57 globally distributed
benthic \eqn{\delta^{18}O}{\delta18O} records (which measure global ice
volume and deep ocean temperature) collected from the scientific literature.
}
\examples{
plot(
  x = lisiecki2005$age,
  y = lisiecki2005$delta,
  type = "l",
  xlim = c(500, 0),
  xlab = "kilo year BP",
  ylab = expression(delta^{18}*"O")
)
}
\references{
Lisiecki, L. E. and Raymo, M. E. (2005). A Pliocene-Pleistocene stack of 57
globally distributed benthic d18O records. \emph{Paleoceanography}, 20,
PA1003. \doi{10.1029/2004PA001071}
}
\seealso{
Other palaeoenvironment data: 
\code{\link{epica2008}},
\code{\link{law2006}},
\code{\link{ngrip2004}},
\code{\link{ngrip2010}},
\code{\link{spratt2016}}

Other isotopic data: 
\code{\link{ngrip2004}},
\code{\link{ngrip2010}},
\code{\link{nydal1996}},
\code{\link{spratt2016}},
\code{\link{vegetation}}
}
\concept{isotopic data}
\concept{palaeoenvironment data}
\keyword{datasets}
