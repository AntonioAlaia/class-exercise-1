library(rio)
vote_income <- import("ESS1-9e01_1.dta")

#View(vote_income)
variable.names(vote_income)

library(tidyverse)

voteinc <- filter(
  vote_income,
  agea > 18,
  vote == 1 | vote == 2
)

typeof(voteinc$vote)
unique(voteinc$vote)

#View(voteinc)