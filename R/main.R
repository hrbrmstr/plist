#' Convert a property list (binary or XML) to an R list
#'
#' @param x binary or XML property list
#' @export
#' @examples
#' xml <- '<?xml version="1.0" encoding="UTF-8"?>
#' <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN"
#' "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
#' <plist version="1.0">
#' <dict>
#' <key>Label</key>
#' <string>com.example.app</string>
#' <key>Program</key>
#' <string>/Users/Me/Scripts/cleanup.sh</string>
#' <key>RunAtLoad</key>
#' <true/>
#' </dict>
#' </plist>'
#'
#' plist_to_list(xml)
plist_to_list <- function(x) {

  if (is.character(x)) x <- charToRaw(x)
  stopifnot(is.raw(x))

  tmp <- int_get_plist(x)
  tmp <- XML::readKeyValueDB(tmp)

  class(tmp) <- c("property_list", "list")

  tmp

}

#' Convert a property list to raw (unparsed) XML
#'
#' @param x binary or XML property list
#' @export
#' @examples
#' xml <- '<?xml version="1.0" encoding="UTF-8"?>
#' <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN"
#' "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
#' <plist version="1.0">
#' <dict>
#' <key>Label</key>
#' <string>com.example.app</string>
#' <key>Program</key>
#' <string>/Users/Me/Scripts/cleanup.sh</string>
#' <key>RunAtLoad</key>
#' <true/>
#' </dict>
#' </plist>'
#'
#' plist_to_xml(xml)
plist_to_xml <- function(x) {

  if (is.character(x)) x <- charToRaw(x)
  stopifnot(is.raw(x))

  tmp <- int_get_plist(x)
  class(tmp) <- c("property_list", "character")

  tmp

}

#' Read a binary or XML property list from a file/connection
#'
#' @param x a file or connection (will be [path.expand()]ed)
#' @export
#' @examples
#' read_plist(system.file("sample/plist.txt", package = "plist"))
#' read_plist(system.file("sample/plist.bin", package = "plist"))
read_plist <- function(x) {

  x <- path.expand(x[1])
  stopifnot(file.exists(x))

  tmp <- readBin(x, what = "raw", n = file.size(x))
  tmp <- int_get_plist(tmp)
  tmp <- XML::readKeyValueDB(tmp)

  class(tmp) <- c("property_list", "list")

  tmp

}