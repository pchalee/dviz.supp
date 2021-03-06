% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/stat_sina.R
\docType{data}
\name{stat_sina}
\alias{stat_sina}
\alias{StatSina}
\title{ggplot2 stat that creates sina plots}
\usage{
stat_sina(mapping = NULL, data = NULL, geom = "point",
  position = "identity", ..., bw = "nrd0", adjust = 1,
  kernel = "gaussian", trim = TRUE, scale = "area", na.rm = FALSE,
  show.legend = NA, inherit.aes = TRUE)
}
\arguments{
\item{mapping}{Set of aesthetic mappings created by \code{\link[=aes]{aes()}} or
\code{\link[=aes_]{aes_()}}. If specified and \code{inherit.aes = TRUE} (the
default), it is combined with the default mapping at the top level of the
plot. You must supply \code{mapping} if there is no plot mapping.}

\item{data}{The data to be displayed in this layer. There are three
options:

If \code{NULL}, the default, the data is inherited from the plot
data as specified in the call to \code{\link[=ggplot]{ggplot()}}.

A \code{data.frame}, or other object, will override the plot
data. All objects will be fortified to produce a data frame. See
\code{\link[=fortify]{fortify()}} for which variables will be created.

A \code{function} will be called with a single argument,
the plot data. The return value must be a \code{data.frame}, and
will be used as the layer data. A \code{function} can be created
from a \code{formula} (e.g. \code{~ head(.x, 10)}).}

\item{geom}{The geometric object to use display the data}

\item{position}{Position adjustment, either as a string, or the result of
a call to a position adjustment function.}

\item{...}{Other arguments passed on to \code{\link[=layer]{layer()}}. These are
often aesthetics, used to set an aesthetic to a fixed value, like
\code{colour = "red"} or \code{size = 3}. They may also be parameters
to the paired geom/stat.}

\item{bw}{The smoothing bandwidth to be used.
If numeric, the standard deviation of the smoothing kernel.
If character, a rule to choose the bandwidth, as listed in
\code{\link[stats:bw.nrd]{stats::bw.nrd()}}.}

\item{adjust}{A multiplicate bandwidth adjustment. This makes it possible
to adjust the bandwidth while still using the a bandwidth estimator.
For example, \code{adjust = 1/2} means use half of the default bandwidth.}

\item{kernel}{Kernel. See list of available kernels in \code{\link[=density]{density()}}.}

\item{trim}{This parameter only matters if you are displaying multiple
densities in one plot. If \code{FALSE}, the default, each density is
computed on the full range of the data. If \code{TRUE}, each density
is computed over the range of that group: this typically means the
estimated x values will not line-up, and hence you won't be able to
stack density values.}

\item{scale}{if "area" (default), all violins have the same area (before trimming
the tails). If "count", areas are scaled proportionally to the number of
observations. If "width", all violins have the same maximum width.}

\item{na.rm}{If \code{FALSE}, the default, missing values are removed with
a warning. If \code{TRUE}, missing values are silently removed.}

\item{show.legend}{logical. Should this layer be included in the legends?
\code{NA}, the default, includes if any aesthetics are mapped.
\code{FALSE} never includes, and \code{TRUE} always includes.
It can also be a named logical vector to finely select the aesthetics to
display.}

\item{inherit.aes}{If \code{FALSE}, overrides the default aesthetics,
rather than combining with them. This is most useful for helper functions
that define both data and aesthetics and shouldn't inherit behaviour from
the default plot specification, e.g. \code{\link[=borders]{borders()}}.}
}
\description{
This stat closely mirrors \code{\link[=stat_ydensity]{stat_ydensity()}} from ggplot2. This enables the
user to plot sina plots on top of violin plots and have them match perfectly.
}
\examples{
ggplot(iris, aes(Species, Sepal.Length)) +
  geom_violin(color = NA) +
  stat_sina()
}
\seealso{
\code{\link[=geom_violin]{geom_violin()}}
}
\keyword{datasets}
