library(tidyverse)
words2 <- readLines("words.txt")

#test = c("hello, you are a silly person", "the big red fox jumped over the lazy dog quickly and said hi", "no")


lettercount <- words2 %>%
	tolower() %>% 
	strsplit("") %>% 
	c(recursive= TRUE) %>% 
	table() %>% 
	enframe(name = "letter", value = "lettercount")


	write.table(lettercount, "lettercount.tsv", sep = "\t", row.names = FALSE, quote = FALSE)


