---
title: "English Word lengths and Letter Frequency"
author: "Jenny Bryan, Jasmine Lib"
date: "27 November, 2018"
output:
  html_document:
    keep_md: yes
---



On most *nix systems, the file `/usr/share/dict/words` contains a bunch of words. On my machine, it contains 235886 words.

I computed the length of each word, i.e. the number of characters, and tabulated how many words consist of 1 character, 2 characters, etc.

The most frequent word length is 9.

Here is a histogram of word lengths.

![*Fig. 1* A histogram of English word lengths](histogram.png)






In the second part of this assignment, I computed the total frequency of each letter in the file 'words'.

Here is a bar chart showing letter frequency totals in all words in the file 'words'.


![*Fig. 2* A Bar Chart of Letter Use](lettercount.png)
