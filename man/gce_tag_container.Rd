% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/build.R
\name{gce_tag_container}
\alias{gce_tag_container}
\title{Return a container tag for Google Container Registry}
\usage{
gce_tag_container(
  container_name,
  project = gce_get_global_project(),
  container_url = "gcr.io"
)
}
\arguments{
\item{container_name}{A running docker container. Can't be set if \code{image_name} is too.}

\item{project}{Project ID for this request, default as set by \link{gce_get_global_project}

This will only work on the Google Container optimised containers of image_family google_containers.
Otherwise you will need to get a container authentication yourself (for now)

It will start the push but it may take a long time to finish, especially the first time, 
  this function will return whilst waiting but don't turn off the VM until its finished.}

\item{container_url}{The URL of where to save container}
}
\value{
A tag for use in Google Container Registry
}
\description{
Return a container tag for Google Container Registry
}
\seealso{
Other container registry functions: 
\code{\link{gce_pull_registry}()},
\code{\link{gce_push_registry}()}
}
\concept{container registry functions}
