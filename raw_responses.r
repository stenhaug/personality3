#Raw responses
# load packages
library(tidyverse)
library(ggplot2)
library(dplyr)
library(stringr)
library(modelr)

# load data
responses <- 
  read_tsv("data-raw/data-final.csv") %>% 
  na.omit()

#subset raw response data
responses <- responses %>% 
  select(1:50) %>% 
  mutate(id = row_number()) %>% 
  select(id, everything())
View(responses)
names(responses)
