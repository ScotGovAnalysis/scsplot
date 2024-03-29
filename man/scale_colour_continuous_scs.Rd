% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/scale_colour_continuous_scs.R
\name{scale_colour_continuous_scs}
\alias{scale_colour_continuous_scs}
\title{Continuous colour scales for SCS}
\usage{
scale_colour_continuous_scs(
  palette = "main",
  reverse = FALSE,
  na_colour = "grey50",
  guide = "colourbar",
  ...
)
}
\arguments{
\item{palette}{Name of palette to use from `scs_colour_palettes`; e.g. main,
sequential, focus.}

\item{reverse}{Boolean value to indicate whether the palette should be
reversed.}

\item{na_colour}{Colour to set for missing values.}

\item{guide}{A name or function used to create guide. Default is "colourbar".}

\item{...}{Additional arguments passed to scale type}
}
\description{
Continuous colour scales for SCS
}
\examples{
library(ggplot2)
qplot(mpg, wt, data = mtcars, colour = cyl) +
 scale_colour_continuous_scs(palette = "sequential") +
 scs_theme()

}
