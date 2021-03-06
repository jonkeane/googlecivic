% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_rep_by_district.R
\name{get_rep_by_division}
\alias{get_rep_by_division}
\title{get_rep_by_division}
\usage{
get_rep_by_division(
  ocdId = NULL,
  levels = NULL,
  recursive = NULL,
  roles = NULL,
  key = Sys.getenv("google_civic_api")
)
}
\arguments{
\item{ocdId}{An Open Civic Data Division Identifier, e.g. from the \code{id}
column of \link{ocd_divisions}}

\item{levels}{List of office levels supplied as string. Only offices that
serve at least one of these levels will be returned Acceptable values
are: "administrativeArea1", "administrativeArea2", "country",
"international", "locality", "regional", "special", "subLocality1",
"subLocality2"}

\item{recursive}{If \code{TRUE}, information about all divisions contained in the
division requested will be included as well. For example, if querying
ocd-division/country:us/district:dc, this would also return all DC's
wards and ANCs.}

\item{roles}{List of roles supplied as string. Only offices fulfilling one of
these roles will be returned. Acceptable values are:
"deputyHeadOfGovernment", "executiveCouncil", "governmentOfficer",
"headOfGovernment", "headOfState", "highestCourtJudge", "judge",
"legislatorLowerBody", "legislatorUpperBody", "schoolBoard",
"specialPurposeOfficer"}

\item{key}{API key supplied as a string. Defaults to the environmental
variable called "google_civic_api." Info on how to get a key can be found
here: https://developers.google.com/civic-information}
}
\value{
Returns a list of offices by divisions and respective officials
}
\description{
This function interacts with the representatives endpoint of the Google Civic Information API
}
\examples{
\dontrun{
get_rep_by_division(
    ocdId = "ocd-division/country:us/district:dc",
    level="locality",
    recursive = TRUE
)
}

}
