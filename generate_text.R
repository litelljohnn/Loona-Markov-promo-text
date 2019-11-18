rm(list=ls())
setwd("") #set directory
library(markovchain)
library(tokenizers)
library(readtext)
library(tidyverse)
library(ngram)

str = readtext("promo_text.txt")
str = str[, 2]
textngram = ngram(str, n = 1, sep = " ")
textngram_str = get.string(textngram)
sample1 = babble(textngram, genlen = 550, seed = 2)

text2gram = ngram(str, n = 2, sep = " ")
sample2 = babble(text2gram, genlen = 550, seed = 1)
print(sample2)
