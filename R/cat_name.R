#' Get cats by name
#'
#' @param df A dataset with column name
#' @param text Partial name of a cat
#' @return The names of cats in descending popularity
#' @example
#'    cat_name(cats, "nut")
#' @export

cat_name <- function(df, text="nut"){

library(tidyverse)

df %>%
  filter(grepl(text, name)) %>%
  group_by(name) %>%
  tally() %>%
  arrange(-n)

}
