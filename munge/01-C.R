# Create term document matrix from local reviews file

documents = data.frame(Text = local.reviews$Long.Desc.)
row.names(documents) = 1:nrow(documents)

corpus = Corpus(DataframeSource(documents))
corpus = tm_map(corpus, tolower)
corpus = tm_map(corpus, stripWhitespace)
corpus = tm_map(corpus, removeWords, stopwords('english'))

dtm = DocumentTermMatrix(corpus)