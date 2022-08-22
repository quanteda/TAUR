library("quanteda")

data_corpus_TAhotels <- read.csv("~/Downloads/tripadvisor_hotel_reviews.csv") %>%
  corpus(text_field = "Review")

# inspect
quanteda.tidy::glimpse(data_corpus_TAhotels)

meta(data_corpus_TAhotels) <- list(
  description = "20k hotel reviews extracted from Tripadvisor, from Alam, M. H., Ryu, W.-J., Lee, S., 2016. Joint multi-grain topic sentiment: modeling semantic aspects for online reviews. Information Sciences 339, 206–223.",
  source = "Kaggle TripAdvisor Hotel Reviews.",
  url = "https://www.kaggle.com/andrewmvd/trip-advisor-hotel-reviews",
  author = "",
  keywords = c("arts and entertainment", "travel", "nlp", "ratings and reviews", "hotels and accommodations", "tripadvisor"),
  title = "Trip Advisor Hotel Reviews",
  source = "Alam, M. H., Ryu, W.-J., Lee, S., 2016. Joint multi-grain topic sentiment: modeling semantic aspects for online reviews. Information Sciences 339, 206–223.",
  license = "Attribution-NonCommercial 4.0 International (CC BY-NC 4.0)"
)

data_tokens_TAhotels <- tokens(data_corpus_TAhotels)

usethis::use_data(data_corpus_TAhotels, overwrite = TRUE)
usethis::use_data(data_tokens_TAhotels, overwrite = TRUE)
