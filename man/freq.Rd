\name{freq}
\alias{freq}
\title{Frequency Tables for Factors and Other Discrete Data}
\description{Displays weighted or unweighted frequencies including <NA> counts and proportions.}
\usage{
freq(x, round.digits=2, style="simple", justify="right",
     plain.ascii=TRUE, file=NA, append=FALSE,
     escape.pipe=FALSE, weights=NA,
     rescale.weights=FALSE, ...)
}
\arguments{
  \item{x}{Vector of discrete (categorical) data.}
  \item{round.digits}{Number of sig. digits to keep in output. Defaults to \code{2}.}
  \item{style}{Style of pander tables, one of \dQuote{simple} (default), \dQuote{grid} and \dQuote{rmarkdown}.}
  \item{justify}{\pkg{pander} argument. Defaults to "right".}
  \item{plain.ascii}{\pkg{pander} argument; when results are displayed in console, this avoids having \emph{markdown} markup characters in the tables. Defaults to TRUE, except when \code{style='rmarkdown'} (see Details).}
  \item{file}{File name to write output to. Defaults to \code{NA}. To append output to an existing text file, use \code{append=TRUE}.}
  \item{append}{When \dQuote{file} argument is supplied, this indicates whether to append output to existing file (\code{TRUE}) or to overwrite any existing file (\code{FALSE}, default). If \code{TRUE} and no file exists, a new file will be created.}
  \item{escape.pipe}{Only useful when \code{style='grid'} and \code{file} argument is not \code{NA}, in which case it will escape the pipe character (|) to allow Pandoc to correctly convert multiline cells.}
  \item{weights}{Vector of weights, having same length as x}
  \item{rescale.weights}{Logical parameter. When \code{TRUE}, the function makes the sum of weights equal to the length of x, so that the total N remains unchanged. \code{FALSE} by default.}
  \item{\dots}{Additional arguments passed to \pkg{pander}.}
}
\details{
The default \code{plain.ascii=TRUE} option is there to make results appear clean in the console, but creates problems when generating markdown documents. For this reason, whenever \code{style='rmarkdown'}, the option is set to FALSE, unless \code{plain.ascii=TRUE} is stated explicitly. On the other hand, with \code{style='grid'}, if the intent is to produce markdown text, then the user needs to explicitly set \code{plain.ascii=FALSE}.
}
\value{A frequency table of class \code{matrix} with attributes used by \pkg{summarytool}'s \emph{print} method.}
\references{\url{https://github.com/dcomtois/summarytools}}
\author{Dominic Comtois <dominic.comtois@gmail.com>}
\examples{
data(tobacco)
freq(tobacco$gender)
freq(tobacco$gender, style="rmarkdown")
with(tobacco, by(smoker, gender, freq))
}
\keyword{ univar }
\keyword{ classes category }
