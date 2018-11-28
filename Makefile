all: report.html lettercount_analysis.html

#phony output returns an HTML file that only shows the lettercount analysis
letter_analysis: lettercount_analysis.html

clean:
	rm -f words.txt histogram.tsv histogram.png report.md report.html lettercount.tsv lettercount.png lettercount_analysis.html lettercount_analysis.md

report.html: report.rmd histogram.png lettercount.png
	Rscript -e 'rmarkdown::render("$<")'
	
lettercount_analysis.html: lettercount_analysis.rmd lettercount.png
	Rscript -e 'rmarkdown::render("$<")'

#Uses Rscript to make a histogram plot of word length.
histogram.png: histogram.tsv
	Rscript -e 'library(ggplot2); \
	qplot(Length, Freq, data=read.delim("$<"), colour = I("red")) +\
	ylab("Frequency")+\
	xlab("Word Length (Letters)"); \
	ggsave("$@")'
	rm Rplots.pdf

#Use Rscript to make a bar plot of letter frequency
lettercount.png: lettercount.tsv
	Rscript -e 'library(tidyverse);\
	ggplot(data = read.delim("$<"), \
	aes(letter, lettercount)) + \
	geom_bar(stat = "identity", fill = "red", colour = "black")+\
	ggtitle("Total Letter Count in 'Words'") +\
	ylab("Total Letter Count") + \
	xlab("Letters and Characters"); \
	ggsave("$@")'
	rm Rplots.pdf
	
histogram.tsv: histogram.r words.txt
	Rscript $<

lettercount.tsv: lettercount.R words.txt
	Rscript $<

words.txt: /usr/share/dict/words
	cp $< $@


# words.txt:
#	Rscript -e 'download.file("http://svnweb.freebsd.org/base/head/share/dict/web2?view=co", destfile = "words.txt", quiet = TRUE)'

