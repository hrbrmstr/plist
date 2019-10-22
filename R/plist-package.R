#' Read and Manipulate Binary or XML Property Lists
#'
#' A property list is a representation of a hierarchy of objects that
#' can be stored in the file system, memory, or databases and reconstituted later.
#' Property lists give applications a lightweight and portable way to store small
#' amounts of data. They are hierarchies of data made from specific types of
#' objects—they are, in effect, an object graph. Tools are provided to read
#' and manipulate binary or XML property lists.
#'
#' @md
#' @name plist
#' @keywords internal
#' @author Bob Rudis (bob@@rud.is)
#' @importFrom XML readKeyValueDB
## usethis namespace: start
#' @importFrom Rcpp sourceCpp
#' @useDynLib plist, .registration = TRUE
## usethis namespace: end
"_PACKAGE"
