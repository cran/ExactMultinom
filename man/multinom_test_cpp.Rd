% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/RcppExports.R
\name{multinom_test_cpp}
\alias{multinom_test_cpp}
\title{C++ Function for Exact Multinomial Test}
\usage{
multinom_test_cpp(x, p, theta = 1e-04)
}
\arguments{
\item{x}{Vector of non-negative integers - number of times each outcome was observed.}

\item{p}{A vector of positive numbers - the hypothesized probabilities for each outcome. Need to sum to 1!}

\item{theta}{Parameter - p-values less than theta will not be determined precisely.}
}
\value{
Returns a vector containing three values which are the p-values computed from the probability mass, Pearson's chi-square and the log-likelihood ratio statistic.
Values below the threshold theta are upper bounds only and not exact p-values!
}
\description{
C++ function computing exact multinomial p-values. Does not perform any safety checks. Incorrect input may result in unwanted behavior.
Use only through \code{\link{multinom.test}} with method = "exact" is recommended.
}
\details{
The outcomes should be ordered by the hypothesized probabilities from largest to smallest for optimal performance.
}
\seealso{
\code{\link{multinom.test}}
}
