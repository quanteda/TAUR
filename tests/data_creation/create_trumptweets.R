library("quanteda")

data_corpus_trumptweets <- read.csv("~/Downloads/tweets_01-08-2021.csv",
                                    numerals = "no.loss") %>%
  corpus(text_field = "text", docid_field = "id")

# fix date
data_corpus_trumptweets$datetime <- lubridate::as_datetime(data_corpus_trumptweets$date)
data_corpus_trumptweets$date <- NULL

# fix logical fields
data_corpus_trumptweets$isRetweet <- 
    ifelse(data_corpus_trumptweets$isRetweet == "t", TRUE, FALSE)
data_corpus_trumptweets$isDeleted <- 
    ifelse(data_corpus_trumptweets$isDeleted == "t", TRUE, FALSE)
data_corpus_trumptweets$isFlagged <- 
    ifelse(data_corpus_trumptweets$isFlagged == "t", TRUE, FALSE)

# make device into a factor
data_corpus_trumptweets$device <- factor(data_corpus_trumptweets$device)

# inspect
quanteda.tidy::glimpse(data_corpus_trumptweets)

meta(data_corpus_trumptweets) <- list(
  description = "Complete archive of all of Donald J. Trump's tweets.",
  source = "Trump Twitter Archive V2",
  url = "https://www.thetrumparchive.com",
  author = "Brendan Brown",
  keywords = c("political", "US politics", "United States", "presidents", "Trump", "Twitter"),
  title = "Trump Twitter Archive"
)

data_tokens_trumptweets <- tokens(data_corpus_trumptweets)

usethis::use_data(data_corpus_trumptweets, overwrite = TRUE)
usethis::use_data(data_tokens_trumptweets, overwrite = TRUE)
