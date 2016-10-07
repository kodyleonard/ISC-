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

#Problem 7
get_size_class <- function(ear_length){
  # Calculate the size class for one or more earth lengths
  ear_lengths <- ifelse(ear_length > 10, "large", "small")
  return(ear_lengths)
}

elf_table <- data.frame(ID=houseelf$id,Ear_class=houseelf$earlength, 
                        GC.content=gc_content(str_to_lower(houseelf$dnaseq)))

write.csv(elf_table, file="elf_table.csv")

