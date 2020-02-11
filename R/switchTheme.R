#' themeSwitch
#'
#' Let's you switch themes at the press of a button.
#'
#' @section Foo functions:
#' The foo functions ...
#'
#' @docType package
#' @name foo
NULL


#' switchTheme
#'
#' This funcions checks if the current theme is dark. If this
#' is the case, it changes to the light variant.
#' Likewise, the theme is changed to the dark one if it wasn't previously.
#'
#' Use configureDarkTheme and configureLightTheme to set
#' the environment variables for your preferred themes
#'
#' @return
#' NULL
#' @export
#'
#' @examples
#' # Use the addins browser or activate via the addins menue to switch between themes.
#'
switchTheme <- function(){
  e <- function(e) {
  stop("Could not apply theme, please refer to themeSwitch::configureDarkTheme()
            and themeSwitch::configureLightTheme() to set the environment variables")
  }
  if (rstudioapi::getThemeInfo()$dark) {
    tryCatch({
    rstudioapi::applyTheme(Sys.getenv("RSTUDIO_LIGHT_THEME"))
    }, error = e)
  } else {
    tryCatch({
      rstudioapi::applyTheme(Sys.getenv("RSTUDIO_DARK_THEME"))
    }, error = e)
  }
}


#' Configure current theme as dark theme
#'
#' Uses an environment variable RSTUDIO_DARK_THEME
#'
#' @return
#' @export
#'
#' @examples
configureDarkTheme <- function() {
  Sys.setenv(RSTUDIO_DARK_THEME = rstudioapi::getThemeInfo()$editor)
}

#' Configure current theme as light theme
#'
#' Uses an environment variable RSTUDIO_LIGHT_THEME
#'
#' @return
#' @export
#'
#' @examples
configureLightTheme <- function() {
  Sys.setenv(RSTUDIO_LIGHT_THEME = rstudioapi::getThemeInfo()$editor)
}
