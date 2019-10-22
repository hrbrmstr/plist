
[![Project Status: Active – The project has reached a stable, usable
state and is being actively
developed.](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active)
[![Signed
by](https://img.shields.io/badge/Keybase-Verified-brightgreen.svg)](https://keybase.io/hrbrmstr)
![Signed commit
%](https://img.shields.io/badge/Signed_Commits-100%25-lightgrey.svg)
[![Linux build
Status](https://travis-ci.org/hrbrmstr/plist.svg?branch=master)](https://travis-ci.org/hrbrmstr/plist)
[![Windows build
status](https://ci.appveyor.com/api/projects/status/github/hrbrmstr/plist?svg=true)](https://ci.appveyor.com/project/hrbrmstr/plist)
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
  - `read_plist`: Read a binary or XML property list from a
    file/connection

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

Plaintext XML property list in a string:

``` r
xml <- '<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
<key>Label</key>
<string>com.example.app</string>
<key>Program</key>
<string>/Users/Me/Scripts/cleanup.sh</string>
<key>RunAtLoad</key>
<true/>
</dict>
</plist>'

plist_to_list(xml)
## $Label
## [1] "com.example.app"
## 
## $Program
## [1] "/Users/Me/Scripts/cleanup.sh"
## 
## $RunAtLoad
## [1] TRUE
## 
## attr(,"class")
## [1] "property_list" "list"
```

Same content but binary property list:

``` r
as.raw(c(0x3c, 0x3f, 0x78, 0x6d, 0x6c, 0x20, 0x76, 0x65, 0x72, 
0x73, 0x69, 0x6f, 0x6e, 0x3d, 0x22, 0x31, 0x2e, 0x30, 0x22, 0x20, 
0x65, 0x6e, 0x63, 0x6f, 0x64, 0x69, 0x6e, 0x67, 0x3d, 0x22, 0x55, 
0x54, 0x46, 0x2d, 0x38, 0x22, 0x3f, 0x3e, 0x0a, 0x3c, 0x21, 0x44, 
0x4f, 0x43, 0x54, 0x59, 0x50, 0x45, 0x20, 0x70, 0x6c, 0x69, 0x73, 
0x74, 0x20, 0x50, 0x55, 0x42, 0x4c, 0x49, 0x43, 0x20, 0x22, 0x2d, 
0x2f, 0x2f, 0x41, 0x70, 0x70, 0x6c, 0x65, 0x2f, 0x2f, 0x44, 0x54, 
0x44, 0x20, 0x50, 0x4c, 0x49, 0x53, 0x54, 0x20, 0x31, 0x2e, 0x30, 
0x2f, 0x2f, 0x45, 0x4e, 0x22, 0x20, 0x22, 0x68, 0x74, 0x74, 0x70, 
0x3a, 0x2f, 0x2f, 0x77, 0x77, 0x77, 0x2e, 0x61, 0x70, 0x70, 0x6c, 
0x65, 0x2e, 0x63, 0x6f, 0x6d, 0x2f, 0x44, 0x54, 0x44, 0x73, 0x2f, 
0x50, 0x72, 0x6f, 0x70, 0x65, 0x72, 0x74, 0x79, 0x4c, 0x69, 0x73, 
0x74, 0x2d, 0x31, 0x2e, 0x30, 0x2e, 0x64, 0x74, 0x64, 0x22, 0x3e, 
0x0a, 0x3c, 0x70, 0x6c, 0x69, 0x73, 0x74, 0x20, 0x76, 0x65, 0x72, 
0x73, 0x69, 0x6f, 0x6e, 0x3d, 0x22, 0x31, 0x2e, 0x30, 0x22, 0x3e, 
0x0a, 0x09, 0x3c, 0x64, 0x69, 0x63, 0x74, 0x3e, 0x0a, 0x09, 0x09, 
0x3c, 0x6b, 0x65, 0x79, 0x3e, 0x4c, 0x61, 0x62, 0x65, 0x6c, 0x3c, 
0x2f, 0x6b, 0x65, 0x79, 0x3e, 0x0a, 0x09, 0x09, 0x3c, 0x73, 0x74, 
0x72, 0x69, 0x6e, 0x67, 0x3e, 0x63, 0x6f, 0x6d, 0x2e, 0x65, 0x78, 
0x61, 0x6d, 0x70, 0x6c, 0x65, 0x2e, 0x61, 0x70, 0x70, 0x3c, 0x2f, 
0x73, 0x74, 0x72, 0x69, 0x6e, 0x67, 0x3e, 0x0a, 0x09, 0x09, 0x3c, 
0x6b, 0x65, 0x79, 0x3e, 0x50, 0x72, 0x6f, 0x67, 0x72, 0x61, 0x6d, 
0x3c, 0x2f, 0x6b, 0x65, 0x79, 0x3e, 0x0a, 0x09, 0x09, 0x3c, 0x73, 
0x74, 0x72, 0x69, 0x6e, 0x67, 0x3e, 0x2f, 0x55, 0x73, 0x65, 0x72, 
0x73, 0x2f, 0x4d, 0x65, 0x2f, 0x53, 0x63, 0x72, 0x69, 0x70, 0x74, 
0x73, 0x2f, 0x63, 0x6c, 0x65, 0x61, 0x6e, 0x75, 0x70, 0x2e, 0x73, 
0x68, 0x3c, 0x2f, 0x73, 0x74, 0x72, 0x69, 0x6e, 0x67, 0x3e, 0x0a, 
0x09, 0x09, 0x3c, 0x6b, 0x65, 0x79, 0x3e, 0x52, 0x75, 0x6e, 0x41, 
0x74, 0x4c, 0x6f, 0x61, 0x64, 0x3c, 0x2f, 0x6b, 0x65, 0x79, 0x3e, 
0x0a, 0x09, 0x09, 0x3c, 0x74, 0x72, 0x75, 0x65, 0x2f, 0x3e, 0x0a, 
0x09, 0x3c, 0x2f, 0x64, 0x69, 0x63, 0x74, 0x3e, 0x0a, 0x3c, 0x2f, 
0x70, 0x6c, 0x69, 0x73, 0x74, 0x3e, 0x0a)) -> raw_plist

plist_to_list(raw_plist)
## $Label
## [1] "com.example.app"
## 
## $Program
## [1] "/Users/Me/Scripts/cleanup.sh"
## 
## $RunAtLoad
## [1] TRUE
## 
## attr(,"class")
## [1] "property_list" "list"
```

Raw, unparsed XML vs a list:

``` r
plist_to_xml(xml)
## [1] "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<!DOCTYPE plist PUBLIC \"-//Apple//DTD PLIST 1.0//EN\" \"http://www.apple.com/DTDs/PropertyList-1.0.dtd\">\n<plist version=\"1.0\">\n<dict>\n\t<key>Label</key>\n\t<string>com.example.app</string>\n\t<key>Program</key>\n\t<string>/Users/Me/Scripts/cleanup.sh</string>\n\t<key>RunAtLoad</key>\n\t<true/>\n</dict>\n</plist>\n"
## attr(,"class")
## [1] "property_list" "character"

plist_to_xml(raw_plist)
## [1] "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<!DOCTYPE plist PUBLIC \"-//Apple//DTD PLIST 1.0//EN\" \"http://www.apple.com/DTDs/PropertyList-1.0.dtd\">\n<plist version=\"1.0\">\n<dict>\n\t<key>Label</key>\n\t<string>com.example.app</string>\n\t<key>Program</key>\n\t<string>/Users/Me/Scripts/cleanup.sh</string>\n\t<key>RunAtLoad</key>\n\t<true/>\n</dict>\n</plist>\n"
## attr(,"class")
## [1] "property_list" "character"
```

From files:

``` r
# plaintext XML
read_plist(system.file("sample/plist.txt", package = "plist"))
## $Label
## [1] "com.example.app"
## 
## $Program
## [1] "/Users/Me/Scripts/cleanup.sh"
## 
## $RunAtLoad
## [1] TRUE
## 
## attr(,"class")
## [1] "property_list" "list"

# binary
read_plist(system.file("sample/plist.bin", package = "plist"))
## $Label
## [1] "com.example.app"
## 
## $Program
## [1] "/Users/Me/Scripts/cleanup.sh"
## 
## $RunAtLoad
## [1] TRUE
## 
## attr(,"class")
## [1] "property_list" "list"
```

## plist Metrics

| Lang | \# Files |  (%) | LoC |  (%) | Blank lines |  (%) | \# Lines |  (%) |
| :--- | -------: | ---: | --: | ---: | ----------: | ---: | -------: | ---: |
| Rmd  |        1 | 0.14 |  58 | 0.46 |          28 | 0.44 |       43 | 0.38 |
| C++  |        2 | 0.29 |  37 | 0.29 |          16 | 0.25 |        4 | 0.04 |
| R    |        4 | 0.57 |  31 | 0.25 |          20 | 0.31 |       65 | 0.58 |

## Code of Conduct

Please note that this project is released with a Contributor Code of
Conduct. By participating in this project you agree to abide by its
terms.
