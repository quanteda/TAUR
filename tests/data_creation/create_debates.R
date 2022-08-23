library("quanteda")
library("quanteda")
library("rvest")
library("stringr")
library("quanteda.tidy")

# assign URL of debates to an object called url_debates
url_debates <- "https://www.presidency.ucsb.edu/advanced-search?field-keywords=&field-keywords2=&field-keywords3=&from%5Bdate%5D=01-01-2020&to%5Bdate%5D=12-31-2020&person2=200301&category2%5B%5D=64&items_per_page=50"

source_page <- read_html(url_debates)

# get debate meta-data

nodes_pres <- ".views-field-title a"
text_pres <- ".views-field-field-docs-start-date-time-value.text-nowrap"

debates_meta <- data.frame(
    location = html_text(html_nodes(source_page, nodes_pres)),
    date =  html_text(html_nodes(source_page, text_pres)),
    stringsAsFactors = FALSE
)

# format the date
debates_meta$date <- as.Date(trimws(debates_meta$date), 
                             format = "%b %d, %Y")

# get debate URLs
debates_links <- source_page |> 
    html_nodes(".views-field-title a") |> 
    html_attr(name = "href") 

# add first part of URL to debate links
debates_links <- paste0("https://www.presidency.ucsb.edu", debates_links)

# scrape search results
debates_scraped <- lapply(debates_links, read_html)

# get character vector, one element per debate
debates_text <- sapply(debates_scraped, function(x) {
    html_nodes(x, "p") |> 
        html_text() |>
        paste(collapse = "\n\n")
})

debates_meta$location <- factor(str_remove_all(debates_meta$location, 
                                        "Presidential Debate at "))


# remove end of documents

remove_end_20200929 <- "\n\nDonald J. Trump, Presidential Debate at Case Western Reserve University in Cleveland, Ohio Online by Gerhard Peters and John T. Woolley, The American Presidency Project https://www.presidency.ucsb.edu/node/343824\n\nThe American Presidency ProjectJohn Woolley and Gerhard PetersContact\n\nTwitter Facebook\n\nCopyright © The American Presidency ProjectTerms of Service | Privacy | Accessibility\n\n"
remove_end_20201022 <- "\n\nDonald J. Trump, Presidential Debate at Belmont University in Nashville, Tennessee Online by Gerhard Peters and John T. Woolley, The American Presidency Project https://www.presidency.ucsb.edu/node/345898\n\nThe American Presidency ProjectJohn Woolley and Gerhard PetersContact\n\nTwitter Facebook\n\nCopyright © The American Presidency ProjectTerms of Service | Privacy | Accessibility\n\n"

dat_debates_text <- data.frame(text = debates_text)

dat_debates_text <- dat_debates_text |> 
    mutate(text = gsub(".*News\\)\\n\\n", "", text), # remove start of string that does not relate to debate
           text = str_remove_all(text, remove_end_20200929),
           text = str_remove_all(text, remove_end_20201022),
           text = str_remove_all(text, "\\|\\|"))

data_corpus_debates <- corpus(dat_debates_text$text, 
                              docvars = debates_meta)



# check that irrelevant text at start and end has been removed
data_corpus_debates
as.character(data_corpus_debates[1])
as.character(data_corpus_debates[2])


docnames(data_corpus_debates) <- paste0("Debate: ", data_corpus_debates$date)


# inspect
quanteda.tidy::glimpse(data_corpus_debates)

meta(data_corpus_debates) <- list(
  description = "2020 US Presidential Debates between Donald J. Trump pand Joe Biden",
  source = "The Presidential Presidency Project",
  url = "https://www.presidency.ucsb.edu",
  author = "UC Santa Barbara",
  keywords = c("political", "US politics", "United States", "presidents", "Trump", "Biden", "televised debates"),
  title = "2020 US Presidential Debates"
)

data_tokens_debates <- tokens(data_corpus_debates)

usethis::use_data(data_corpus_debates, overwrite = TRUE)
# usethis::use_data(data_tokens_debates, overwrite = TRUE)
