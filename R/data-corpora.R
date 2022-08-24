#' Amicus curiae briefs from Bakke (1978) and Bollinger (2008)
#'
#' Texts of amicus curiae briefs labelled as being either pro-petitioner or
#' pro-respondent in US Supreme court cases on affirmative action, Bakke (1978)
#' and Bollinger (2008), taken from Evans et al (2007).
#' @format
#'   The corpus consists of 102 documents and includes the following document
#'   variables: \describe{
#'   \item{trainclass}{A character indicating the class of 4 documents that can
#'   be used to train a classifier (the remaining ones are NA); P:
#'   Pro-Petitioner; R: Pro-Respondent.}
#'   \item{testclass}{A character indicating the "true" class of 98 remaining
#'   documents to assess the prediction of the classification; AP:
#'   Pro-Petitioner; AR: Pro-Respondent.} }
#' @references Evans, M., McIntosh, W., Lin, J., & Cates, C. (2007).
#'   "[Recounting the Courts? Applying Automated Content Analysis to Enhance
#'   Empirical Legal
#'   Research](https://doi.org/10.1111/j.1740-1461.2007.00113.x)." *Journal of
#'   Empirical Legal Studies* 4(4): 1007--1039.
#' @keywords data
"data_corpus_amicus"

#' U.S. State of the Union addresses from 1790 to present
#'
#' A corpus object of every US State-of-the-Union address, from 1790 to present.
#' Where interjections or records of audience reaction occurred, such as
#' "(Applause.)", these have been removed.
#' @format
#'   The corpus includes the following document variables: \describe{
#'   \item{FirstName}{President's first and middle names.}
#'   \item{President}{President's last name.}
#'   \item{Date}{Date of the delivery of the speech or document.}
#'   \item{delivery}{Either `written` or `spoken`, depending on the
#'   format. See Source.}
#'   \item{type}{Either `SOTU` for an official State of the Union Address,
#'   or `other`, for a different form of speech or message. See Source.}
#'   \item{party}{President's party.}
#'   }
#' @source The American Presidency Project,
#'   <http://www.presidency.ucsb.edu/sou.php>.
"data_corpus_sotu"

#' UK political party manifestos, 1945--2005
#'
#' A corpus object containing 105 UK Manifestos from 1945--2005, with party and year attributes.
#' @format
#'   The corpus includes the following document variables: \describe{
#'   \item{Country}{Country name (UK).}
#'   \item{Type}{Character indicating the type of election: national (`natl`) or regional (`regl`.}
#'   \item{Language}{Language (`en`).}
#'   \item{Party}{A character abbreviation of the political party.}
#'   }
"data_corpus_ukmanifestos"

#' Large Movie Review Dataset from Maas et. al. (2011)
#'
#' A corpus object containing a dataset for sentiment classification containing
#' 25,000 highly polar movie reviews for training, and 25,000 for testing, from
#' Maas et. al. (2011).
#' @format The corpus docvars consist of:
#'   \describe{
#'   \item{docnumber}{serial (within set and polarity) document number}
#'   \item{rating}{user-assigned movie rating on a 1-10 point integer scale}
#'   \item{set}{used for test v. training set}
#'   \item{polarity}{either `neg` or `pos` to indicate whether the
#'     movie review was negative or positive.  See Maas et al (2011) for the
#'     cut-off values that governed this assignment.}
#'   }
#' @references
#' Andrew L. Maas, Raymond E. Daly, Peter T. Pham, Dan Huang, Andrew Y. Ng, and
#' Christopher Potts. (2011). "[Learning Word Vectors for Sentiment
#' Analysis](http://ai.stanford.edu/~amaas/papers/wvSent_acl2011.pdf)". The 49th
#' Annual Meeting of the Association for Computational Linguistics (ACL 2011).
#' @source <http://ai.stanford.edu/~amaas/data/sentiment/>
#' @keywords data
"data_corpus_LMRD"

#' Trump Twitter archive
#'
#' A corpus object containing a dataset consisting of all of Trump's Tweets,
#' going back to 2009.  Total: 56,571.
#' @format The docname is the ID of the original Tweet.  The corpus docvars consist of:
#'   \describe{
#'   \item{isRetweet}{logical; if *TRUE*, the Tweet was a retweet.}
#'   \item{isDeleted}{logical; if *TRUE*, the Tweet was deleted.}
#'   \item{device}{factor; the device from which the Tweet was sent.}
#'   \item{favorites}{integer; the total number of favorites the Tweet received.}
#'   \item{retweets}{integer; total number of times the Tweet was retweeted.}
#'   \item{isFlagged}{logical; if *TRUE*, the Tweet was flagged.}
#'   \item{datetime}{datetime format in UTC.}
#'   }
#' @source <https://www.thetrumparchive.com>
#' @keywords data
"data_corpus_trumptweets"

#' TripAdvisor Hotel Reviews
#'
#' A corpus object containing 20k TripAdvisor hotel reviews, and ratings.
#' @format The only corpus docvar consists of `Rating`, ranging from 1 to 5.
#' @source <https://www.kaggle.com/andrewmvd/trip-advisor-hotel-reviews>
#' @references Alam, M. H., Ryu, W.-J., Lee, S. (2016). Joint multi-grain topic
#'   sentiment: modeling semantic aspects for online reviews. _Information
#'   Sciences_ 339, 206–223. \doi{10.1016/j.ins.2016.01.013}
#' @section License: [Attribution-NonCommercial 4.0 International (CC BY-NC
#'   4.0)](https://creativecommons.org/licenses/by-nc/4.0/)
#' @keywords data
"data_corpus_TAhotels"


#' 2020 US Presidential Debates
#'
#' A corpus object containing the transcripts of the two US Presidential Debates
#' Donald J. Trump and Joe Biden. Each document includes the full debate text by the two
#' politicians and the moderator.
#' @format The docname is the date of the debate.  The corpus docvars consist of:
#'   \describe{
#'   \item{location}{factor; location of the debate (Cleveland and Nashville).}
#'   \item{date}{date; date of the debate (2020-09-29 and 2020-10-22).}
#'   }
#' @source <https://www.presidency.ucsb.edu>
#' @references "The American Presidency Project"
#' @keywords data
#' @examples
#' # transform debate-level corpus to level of statements
#' library(quanteda)
#' data_corpus_debatesseg <- corpus_segment(data_corpus_debates,
#'                                          pattern =  "\\s*[[:upper:]]+:\\s+",
#'                                          valuetype = "regex",
#'                                          case_insensitive = FALSE)
"data_corpus_debates"
