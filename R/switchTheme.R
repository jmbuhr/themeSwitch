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
#' This funcions checks if the current theme is `Tomorrow Night`. If this
#' is the case, it changes the theme to the default theme (`Textmate`).
#' Likewise, the theme is changed to the dark one if it wasn't previously.
#'
#' @return
#' NULL
#' @export
#'
#' @examples
#' # Use the addins browser or activate via the addins menue to switch between themes.
#'
switchTheme <- function(){
  if (rstudioapi::getThemeInfo()$editor == "Tomorrow Night") {
    rstudioapi::applyTheme("Textmate (default)")
  } else {
    rstudioapi::applyTheme("Tomorrow Night")
  }
}
