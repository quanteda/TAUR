#' Martindale's Regressive Imagery Dictionary (RID)
#'
#' The English Regressive Imagery Dictionary (RID) consists of about 3,150 words
#' and roots assigned to 29 categories of primary process cognition, 7
#' categories of secondary process cognition, and 7 categories of emotions,
#' designed by Martindale (1975, 1990) to measure primordial vs. conceptual
#' thinking.
#' @format The dictionary has three levels of nesting, and forms 43 keys in
#'   total and a total of 3,150 values.
#' @references Martindale, C. (1975). *Romantic Progression: The Psychology
#' of Literary History.* Washington, D.C.: Hemisphere.
#'
#' Martindale, C. (1990). *The Clockwork Muse: The Predictability of
#' Artistic Change.* New York: Basic Books.
#' @keywords data
"data_dictionary_RID"

#' Moral Foundations Dictionary
#'
#' @description A \pkg{quanteda} [dictionary][quanteda::dictionary] object containing
#' the Moral Foundations Dictionary, a publicly available dictionaries with
#' information on the proportions of virtue and vice words for each foundation.
#' The categories are harm (vice/virtue), fairness (vice/virtue), ingroup (vice/virtue),
#' authority (vice/virtue), purity (vice/virtue) and morality (general).
#'
#' @description This version is 2.0 version of the dictionary,
#'   [recommended](http://www.jeremyfrimer.com/uploads/2/1/2/7/21278832/summary.pdf)
#'   over the first version of the MDF by its authors.
#' @source http://www.jeremyfrimer.com/research-downloads.html; a previous
#'   version is available at <http://moralfoundations.org/othermaterials>
#' @references
#'   Frimer, J. et. al. (2017).  Moral Foundations Dictionaries for
#'   Linguistic Analyses, 2.0. University of Winnipeg Manuscript.
#'   <http://www.jeremyfrimer.com/uploads/2/1/2/7/21278832/summary.pdf>.
#'
#'   Haidt, J., Graham, J., & Nosek, B.A. (2009). [Liberals and Conservatives
#'   Rely on Different Sets of Moral
#'   Foundations](http://dx.doi.org/10.1037/a0015141). *Journal of Personality
#'   and Social Inquiry*, 20(2--3), 110--119.
#'
#'   Graham, J., & Haidt, J. (2016). [Moral Foundations
#'   Dictionary.](http://moralfoundations.org/othermaterials):
#'   <http://moralfoundations.org/othermaterials>.
#' @keywords data
"data_dictionary_MFD"

#' Laver and Garry Dictionary of Policy Positions
#'
#' A \pkg{quanteda} [dictionary][quanteda::dictionary] object containing the Laver and Garry
#' dictionary which been developed to estimates the policy positions of political actors
#' in the United Kingdom by comparing their speeches and written documents to key words
#' found in the British Conservative and Labour manifestos of 1992. Note: Please remember
#' that this dictionary was customized to reflect the policy positions of UK political parties.
#' @format The dictionary has two levels of nesting with 7 main policy areas (level 1) divided up into 19
#' sub-categories (level 2).
#' @source
#'   <https://provalisresearch.com/products/content-analysis-software/wordstat-dictionary/laver-garry-dictionary-of-policy-position/>
#'
#' @references
#'   Laver. M. & Garry, J. (2000). [Estimating Policy Positions
#'   from Political Texts](https://doi.org/10.2307/2669268). *American Journal of Political Science*, 44(3), 619--634.
#' @keywords data
"data_dictionary_LaverGarry"
