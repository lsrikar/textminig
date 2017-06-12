
# import the data set

dataset = read.delim("Restaurant_Reviews.tsv",quote = '',stringsAsFactors = FALSE)

# cleaning the text
library(tm)
library(SnowballC)

Corpus = VCorpus(VectorSource(dataset$Review))

Corpus = tm_map(Corpus,content_transformer(tolower))

Corpus = tm_map(Corpus,removeNumbers)

Corpus = tm_map(Corpus,removePunctuation)

Corpus = tm_map(Corpus,removeWords,stopwords())

Corpus  = tm_map(Corpus,stemDocument)

Corpus = tm_map(Corpus, stripWhitespace)

# Corpus = tm_map(Corpus, StemDocument) 

