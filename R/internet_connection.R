#' Is there an internet connection?
#'
#' This function returns TRUE if there is an internet connection, FALSE otherwise
#'
#' @return Logical \code{TRUE} if there is an internet connection, \code{FALSE} otherwise
#' @note tests whether user can reach "www.google.com"
#' @example
#' internet_connection()
internet_connection <- function() {
	tryCatch({RCurl::getURL("www.google.com"); TRUE},
					 error = function(err) FALSE)
}
