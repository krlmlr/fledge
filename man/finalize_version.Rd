% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/api-finalize-version.R, R/finalize-version.R
\name{finalize_version}
\alias{finalize_version}
\alias{finalize_version_impl}
\title{Finalize package version}
\usage{
finalize_version(push = FALSE)
}
\arguments{
\item{push}{If \code{TRUE}, push the created tag.}
}
\description{
Calls the following functions:

\enumerate{
\item \code{\link[=commit_version]{commit_version()}}
\item \code{\link[=tag_version]{tag_version()}}, setting \code{force = TRUE} if and only if \code{commit_version()}
amended a commit.
\item Force-pushes the created tag to the \code{"origin"} remote, if \code{push = TRUE}.
}
}
