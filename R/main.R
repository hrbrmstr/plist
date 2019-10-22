#' Convert a property list (binary or XML) to an R list
#'
#' @param x binary or XML property list
#' @export
plist_to_list <- function(x) {

  if (is.character(x)) x <- charToRaw(x)

  tmp <- int_get_plist(x)
  XML::readKeyValueDB(tmp)

}

#' Convert a property list to raw (unparsed) XML
#'
#' @param x binary or XML property list
#' @export
plist_to_xml <- function(x) {

  if (is.character(x)) x <- charToRaw(x)

  int_get_plist(x)

}