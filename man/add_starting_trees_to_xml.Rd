% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/starttree1.R
\name{add_starting_trees_to_xml}
\alias{add_starting_trees_to_xml}
\title{Make starting trees, insert into beast xml and create ML tree plot}
\usage{
add_starting_trees_to_xml(
  xmlfn,
  fastafn,
  plotout = NULL,
  regionDemes = c("Il"),
  ntres = 1,
  ncpu = 4
)
}
\arguments{
\item{xmlfn}{File name of beast xml}

\item{fastafn}{File name of sequence data (needed for ML tree estimation)}

\item{plotout}{Output file name for ML tree plot. Set NULL to not plot}

\item{regionDemes}{regions to colour in the output ML tree}

\item{ntres}{integer how many start trees to produce? a distinct xml is made for each}

\item{ncpu}{Number of CPUs to use}
}
\value{
Some treedater trees. New XMLs are written to disk
}
\description{
This will generate multiple starting trees by ML & treedater. 
Each tree is produced by a different random resolution of polytomies in the ML tree
Sequence names must have sample times included (see prep_tip_labels)
}
