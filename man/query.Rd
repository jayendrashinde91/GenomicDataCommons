% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/query.R
\name{query}
\alias{GDCQuery}
\alias{annotations}
\alias{cases}
\alias{files}
\alias{projects}
\alias{query}
\title{Start a query of GDC metadata}
\usage{
query(entity, filters = NULL, facets = NULL, legacy = FALSE,
  expand = NULL, fields = default_fields(entity))

cases(...)

files(...)

projects(...)

annotations(...)
}
\arguments{
\item{entity}{character vector of 'cases','files','annotations',
or 'projects'}

\item{filters}{a filter list, typically created using \code{\link{make_filter}}, or added
to an existing \code{GDCQuery} object using \code{\link{filter}}.}

\item{facets}{a character vector of}

\item{legacy}{logical(1) whether to use the "legacy" archive or not. 
See \url{https://docs.gdc.cancer.gov/Data_Portal/Users_Guide/Legacy_Archive/} 
and \url{https://gdc-portal.nci.nih.gov/legacy-archive/search/f} for details.}

\item{expand}{a character vector of "expands" to include in returned data}

\item{fields}{a character vector of fields to return}

\item{...}{passed through to \code{\link{query}}}
}
\value{
An S3 object, the GDCQuery object. This is a list
with the following members.
\itemize{
\item{filters}
\item{facets}
\item{fields}
\item{expand}
\item{archive}
\item{token}
}
}
\description{
The basis for all functionality in this package
starts with constructing a query in R. The GDCQuery
object contains the filters, facets, and other
parameters that define the returned results. A token
is required for accessing certain datasets.
}
\section{Functions}{
\itemize{
\item \code{cases}: convenience contructor for a GDCQuery for cases

\item \code{files}: convenience contructor for a GDCQuery for cases

\item \code{projects}: convenience contructor for a GDCQuery for cases

\item \code{annotations}: convenience contructor for a GDCQuery for annotations
}}
\examples{
qcases = query('cases')
# equivalent to:
qcases = cases()

}

