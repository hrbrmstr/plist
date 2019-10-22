
[![Project Status: Active – The project has reached a stable, usable
state and is being actively
developed.](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active)
[![Signed
by](https://img.shields.io/badge/Keybase-Verified-brightgreen.svg)](https://keybase.io/hrbrmstr)
![Signed commit
%](https://img.shields.io/badge/Signed_Commits-100%25-lightgrey.svg)
[![Linux build
Status](https://travis-ci.org/hrbrmstr/plist.svg?branch=master)](https://travis-ci.org/hrbrmstr/plist)  
![Minimal R
Version](https://img.shields.io/badge/R%3E%3D-3.2.0-blue.svg)
![License](https://img.shields.io/badge/License-MIT-blue.svg)

# plist

Read and Manipulate Binary or XML Property Lists

## Description

A property list is a representation of a hierarchy of objects that can
be stored in the file system, memory, or databases and reconstituted
later. Property lists give applications a lightweight and portable way
to store small amounts of data. They are hierarchies of data made from
specific types of objects—they are, in effect, an object graph. Tools
are provided to read and manipulate binary or XML property lists.

**NOTE** Requires
[`libplist`](https://github.com/libimobiledevice/libplist).

## What’s Inside The Tin

The following functions are implemented:

  - `plist_to_list`: Convert a property list (binary or XML) to an R
    list
  - `plist_to_xml`: Convert a property list to raw (unparsed) XML

## Installation

``` r
remotes::install_git("https://git.rud.is/hrbrmstr/plist.git")
# or
remotes::install_git("https://git.sr.ht/~hrbrmstr/plist")
# or
remotes::install_gitlab("hrbrmstr/plist")
# or
remotes::install_bitbucket("hrbrmstr/plist")
# or
remotes::install_github("hrbrmstr/plist")
```

NOTE: To use the ‘remotes’ install options you will need to have the
[{remotes} package](https://github.com/r-lib/remotes) installed.

## Usage

``` r
library(plist)

# current version
packageVersion("plist")
## [1] '0.1.0'
```

## plist Metrics

| Lang | \# Files |  (%) | LoC |  (%) | Blank lines |  (%) | \# Lines |  (%) |
| :--- | -------: | ---: | --: | ---: | ----------: | ---: | -------: | ---: |
| C++  |        2 | 0.29 |  37 | 0.61 |          16 | 0.37 |        4 | 0.07 |
| R    |        4 | 0.57 |  16 | 0.26 |          11 | 0.26 |       28 | 0.46 |
| Rmd  |        1 | 0.14 |   8 | 0.13 |          16 | 0.37 |       29 | 0.48 |

## Code of Conduct

Please note that this project is released with a Contributor Code of
Conduct. By participating in this project you agree to abide by its
terms.
