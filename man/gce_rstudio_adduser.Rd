% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rstudio.R
\name{gce_rstudio_adduser}
\alias{gce_rstudio_adduser}
\title{Creates a user on an RStudio templated instance}
\usage{
gce_rstudio_adduser(
  instance,
  username,
  password,
  admin = TRUE,
  container = "rstudio"
)
}
\arguments{
\item{instance}{An instance with RStudio installed via \link{gce_vm_template}}

\item{username}{The user to create}

\item{password}{The user password}

\item{admin}{Default TRUE - Will the user be able to install packages and other sudo tasks?}

\item{container}{The rstudio container to add the user to}
}
\value{
The instance
}
\description{
RStudio has users based on unix user accounts
}
