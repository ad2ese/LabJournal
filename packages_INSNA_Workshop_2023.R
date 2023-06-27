## DOWNLOADING REQUIRED PACKAGES FOR INSNA WORKSHOP ####

# library(tidyverse)
# library(httr)
# library(xml2)
# library(rvest)
# library(reshape)
# library(devtools)

devtools::install_github('jkeirstead/scholar')

# library(ids)
# library(stringi)
# library(stringr)
# library(genderizeR)
# library(stringdist)

install.packages("devtools")
devtools::install_github("JochemTolsma/RsienaTwoStep", build_vignettes=TRUE)

# library(RSiena)
# library(igraph)
# library(sna)

# Load the required packages
packages <- c("tidyverse", "httr", "xml2", "rvest", "reshape", "devtools", "ids", "stringi", "stringr", "genderizeR", "stringdist") 
package.check <- lapply(
  packages,
  FUN = function(x) {
    if (!require(x, character.only = TRUE)) {
      install.packages(x, dependencies = TRUE)
      library(x, character.only = TRUE)
    }
  }
)