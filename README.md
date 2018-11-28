Homework 9 make-activity Jasmine Lib
=============


This repository was initially cloned from [this repository](https://github.com/STAT545-UBC/make-activity) from Jenny Brian, as was updated to meet the requirements of STAT 547 hw09.

I made the following changes/additions to the pipeline:
 
Added an additional analysis of 'words':  
This analysis involved counting the total frequency of letters used in the entire words file.
- make an RScript to make a table (.tsv)  
- Use rscript in Makefile to make a plot of letter frequency in words   
- update rmd file to show this plot in the final product  
- include a phony output (letter_analysis) such that only my new analysis is run    
- update make all and make clean targets so that they reflect changes made in Makefile  

some make commands to try:
- *make all* -    to make everything
- *make clean* -   to clean files
- *make lettercount.png* -    to make the new lettercount graph
- *make letter_analysis* -   to make only the new analysis
- *make lettercount.tsv* -   to make the lettercount table.
