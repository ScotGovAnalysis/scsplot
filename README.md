
<!-- README.md is generated from README.Rmd. Please edit that file -->

### `scsplot` is superseded by [`sgplot`](https://github.com/DataScienceScotland/sgplot).

# scsplot

[![GitHub release (latest by
date)](https://img.shields.io/github/v/release/DataScienceScotland/scsplot)](https://github.com/DataScienceScotland/scsplot/releases/latest)
[![R build
status](https://github.com/DataScienceScotland/scsplot/workflows/R-CMD-check/badge.svg)](https://github.com/DataScienceScotland/scsplot/actions)

`scsplot` contains functions for creating graphics in reporting of the
Scottish Government Covid-19 Scottish Contact Survey (SCS).

The following functions are available:

  - `scs_theme()` to apply a consistent theme to ggplot charts
  - `scale_colour_discrete_scs()` to apply discrete colour scales for
    charts
  - `scale_colour_continuouse_scs()` to apply continuous colour scales
    for charts
  - `scale_fill_discrete_scs()` to apply discrete colour filling scales
    for charts
  - `scale_fill_continuous_scs()` to apply continuous colour filling
    scales for charts

The available colours have been selected using the [Government
Statistical Service (GSS) Data visualisation: colours
guidance](https://gss.civilservice.gov.uk/policy-store/data-visualisation-colours-in-charts/).
Names and hex codes for available colours and palettes can be viewed by
running the following code:

``` r
# View names and hex codes for all colours
scs_colour_values

# View names and hex codes for all colour palettes
scs_colour_palettes

# View names and hex codes for `main` colour palette
scs_colour_palettes[["main"]]
```

The following colour palettes are available: main, sequential and focus.

## Installation

To install `scsplot`, the package `remotes` is required. The package can
be installed directly from GitHub with:

``` r
remotes::install_github(
  "DataScienceScotland/scsplot",
  upgrade = "never"
)
```

Network security settings may prevent `remotes::install_github()` from
working. If this is the case, `scsplot` can be installed by downloading
the [zip of the
repository](https://github.com/DataScienceScotland/scsplot/archive/main.zip)
and running the following code (replacing the section marked `<>`,
including the arrows themselves):

``` r
remotes::install_local(
  "<FILEPATH OF ZIPPED FILE>/scsplot-main.zip",
  upgrade = "never"
)
```

The `scsplot` package can then be loaded using the `library()` function:

``` r
library(scsplot)
```

To access the help file associated with a function within the `scsplot`
package, type `?function_name` into the RStudio console, for example:

``` r
?scs_theme
```

## Using and Contributing to scsplot

At present, this package is maintained by [Alice
Byers](https://github.com/alicebyers5).

This package has primarily been developed for use by the Scottish
Government Scottish Contact Survey team. However, its contents may be
useful more widely. As such, suggestions and contributions are welcome.
