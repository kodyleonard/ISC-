#Analysis houseelf data
library(stringr)
houseelf <- read.csv("houseelf_earlength_dna_data_1.csv")
gc_content <- function(sequence){
  Gs <- str_count(sequence, "g")
  Cs <- str_count(sequence, "c")
  gc <- round((Gs + Cs) / str_length(sequence) * 100, digits = 2) 
  return(gc)
}
print(gc_content(str_to_lower(houseelf$dnaseq)))
