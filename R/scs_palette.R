#' Return function to use SCS colour palette
#'
#' @param palette Name of palette from `scs_colour_palettes`
#' @param reverse Boolean value to indicate whether the palette should be
#' reversed
#' @param colour_names Boolean value to indicate whether colour names should be
#' included

scs_palette <- function(palette = "main",
                        reverse = FALSE,
                        colour_names = FALSE) {

  # check for valid palette name
  if(!palette %in% names(scsplot::scs_colour_palettes)) {
    stop(palette, " is not a valid palette name.")
  }

  function(n) {

    # Error if more colours requested than exist in palette
    n_available <- length(scsplot::scs_colour_palettes[[palette]])
    if(n > n_available) {
      stop("n too large. Maximum of ", n_available, " colours available in `",
           palette, "` palette.")
    }

    pal <- scsplot::scs_colour_palettes[[palette]][seq_len(n)]

    if(reverse) pal <- rev(pal)

    if(colour_names) {pal} else {as.vector(pal)}

  }

}
