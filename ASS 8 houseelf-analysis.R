#Analysis houseelf data
library(stringr)
houseelf <- read.csv("houseelf_earlength_dna_data_1.csv")
gc_c <- function(sequence){
  Gs <- str_count(sequence, "G")
  Cs <- str_count(sequence, "C")
  gc_content <- (Gs + Cs) / str_length(sequence) * 100
  return(gc_content)
