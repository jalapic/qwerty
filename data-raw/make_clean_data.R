### Make Clean Data

cats <- read.csv("data-raw/cats.csv", stringsAsFactors = F)

cats$name <- gsub("\\*", "", cats$name) #get rid of stars
cats$name <- tolower(cats$name)

cats$name

devtools::use_data(cats, overwrite = T)
