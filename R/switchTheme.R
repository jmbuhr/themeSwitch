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
#' You need the environment variables RSTUDIO_LIGHT_THEME
#' and RSTUDIO_DARK_THEME in your .Renviron file.
#' Run `usethis::edit_r_environ()` to edit it.
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
  stop("Could not apply theme, please set the environment variables. See getEditorTheme()")
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

#' Get current editor theme
#'
#' Use this to find your current theme
#' and get help on setting the
#' the environment variables
#' RSTUDIO_DARK_THEME and RSTUDIO_LIGHT_THEME
#'
#' Run it twice - once in dark mode, once with
#' a light theme - and follow the instructions
#' in the console.
#'
#' @return
#' @export
#'
#' @examples
getEditorTheme <- function() {
  message("Add this to your .Renviron. Tip: usethis::edit_r_environ()")
  if (rstudioapi::getThemeInfo()$dark) {
    cat("RSTUDIO_DARK_THEME =" ,rstudioapi::getThemeInfo()$editor)
  } else {
    cat("RSTUDIO_LIGHT_THEME =" ,rstudioapi::getThemeInfo()$editor)
  }
}

