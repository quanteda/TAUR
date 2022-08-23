test_that("corpus data objects are current", {
    expect_true(is.corpus(data_corpus_amicus))
    expect_true(is.corpus(data_corpus_LMRD))
    expect_true(is.corpus(data_corpus_sotu))
    expect_true(is.corpus(data_corpus_ukmanifestos))
    expect_true(is.corpus(data_corpus_debates))
    expect_true(is.corpus(data_corpus_TAhotels))
    expect_true(is.corpus(data_corpus_trumptweets))
})

test_that("dictionary data objects are current", {
    expect_true(is.dictionary(data_dictionary_LaverGarry))
    expect_true(is.dictionary(data_dictionary_MFD))
    expect_true(is.dictionary(data_dictionary_RID))
})
