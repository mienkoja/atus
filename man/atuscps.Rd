% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/atus-data.R
\docType{data}
\name{atuscps}
\alias{atuscps}
\title{Current Population Survey for ATUS Households (2003-2016)}
\format{A data frame with 181,335 observations on the following variables:
\describe{
 \item{tucaseid}{household id}
 \item{region}{region of household (definitions are listed in Appendix A of codebook) ('gereg')}
 \item{state}{state of household ('gestfips')}
 \item{sex}{respondent sex ('pesex')}
 \item{age}{respondent age ('prtage'); prior to May 2004, 80 meant age 80+, afterwards, 85 meant age 85+}
 \item{edu}{respondent education level, only available for adults ('peeduca')}
 \item{race}{respondent race ('ptdtrace')}
 \item{hispanic}{respondent identifies as hispanic? ('pehspnon')}
 \item{country_born}{respondent's country of birth ('penatvty'), "US" means continental U.S. and "non-US" means otherwise}
 \item{citizen}{citizenship status of respondent ('prcitshp')}
 \item{marital}{respondent's marital status ('pemaritl')}
 \item{home_type}{rent or own home ('hetenure')}
 \item{famincome}{income in dollars of all family members aged 15+ in the past 12 months including work earnings, pensions, and dividends ('hefaminc' and 'hufaminc'), see codebook for details about topcoding, which has changed in October 2003}
}}
\source{
ATUS-CPS data file from \url{https://www.bls.gov/tus/datafiles_0316.htm}  with code book at \url{https://www.bls.gov/tus/atuscpscodebk0316.pdf}. A list of Frequently Used Variables can be found at \url{https://www.bls.gov/tus/freqvariables.pdf}.
}
\usage{
data(atuscps)
}
\description{
This is a 181,335 by 13 data frame containing information collected in the CPS about all individuals who were selected for and responded to the ATUS. The 'tucaseid' variable identifies unique households. Note that the information collected in this dataset was done so 2 to 5 months before the ATUS interview. Variables containing no more than 80\% values missing were considered for inclusion, especially those found on the ATUS Frequently Used Variables list. The original CPS-ATUS file online contains information on all household members selected to participate in the ATUS; for the purpose of minimizing the size of the R package, we removed all non-respondents.
}
\examples{
data(atuscps)

# distribution of households across regions of the U.S.
# note that stratified sampling was done
barplot(table(atuscps$region))

barplot(table(atuscps$race), horiz=TRUE, las=1)

hist(atuscps$age)
}
\keyword{datasets}

