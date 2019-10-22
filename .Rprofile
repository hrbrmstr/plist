.First <- function() {

  options(
    repos = c(CRAN="http://bigd/cran/"),
#   repos = c(CRAN = "https://cloud.r-project.org"),
#   repos = c(CRAN="https://cran.rstudio.com/"),
    deparse.max.lines = 200,
    HTTPUserAgent = "X5O!P%@AP[4\\PZX54(P^)7CC)7}$EICAR-STANDARD-ANTIVIRUS-TEST-FILE!$H+H*",
    menu.graphics = FALSE,
    sergeant.bigint.warnonce = FALSE,
    athena.driver = "odbc",
    java.parameters = c(getOption("java.parameters", default = NULL), "-Xrs"),
    tidyverse.quiet=TRUE,
    devtools.name = "Bob Rudis",
    devtools.desc.author = 'c(person("Bob", "Rudis", email = "bob@rud.is", role = c("aut", "cre")))',
    devtools.desc.license = "MIT + file LICENSE"
  )

}

if (interactive()) {
  options(java.parameters = "-Xmx4g")
  suppressPackageStartupMessages({
    library(usethis)
    library(devtools)
#    library(bit64)
  })
#  methods::setAs("integer", "integer64", function(from) bit64::as.integer64(from))
#  methods::setAs("double", "integer64", function(from) bit64::as.integer64(from))
#  methods::setAs("numeric", "integer64", function(from) bit64::as.integer64(from))
}
