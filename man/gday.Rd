% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gday.R
\name{gday}
\alias{gday}
\title{Is it Gameday?}
\usage{
gday(team = "canucks", date = Sys.Date())
}
\arguments{
\item{team}{The name of your team. Defaults to \code{Canucks}.}

\item{date}{The specified date to check. Defaults to today's date.}
}
\value{
Logical \code{TRUE} if \code{team} has a NHL game today,
\code{FALSE} otherwise
}
\description{
This function returns TRUE if your NHL team plays on the specified date and FALSE otherwise
}
\details{
You know the problem: You're in your office writing R code and
suddenly have the urge to check whether your NHL team has a game today.
Before you know it you just wasted 15 minutes browsing the lastest
news on your favorite hockey webpage.
Suffer no more! You can now ask R directly, without tempting yourself
by firing up your web browser.
}
\note{
case in \code{team} is ignored
}
\examples{
gday()
gday("canucks")
gday("Rangers")
}
\keyword{misc}

