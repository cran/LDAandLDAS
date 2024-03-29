% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/LDA.R
\name{LDA}
\alias{LDA}
\title{LDA of all pairs of SNPs}
\usage{
LDA(paintings, SNPidx = NULL, SNPlimit = NULL, verbose = FALSE)
}
\arguments{
\item{paintings}{a list of data frames of the N*k painting data
(average ancestry probabilities) from different populations
(N is the number of genomes, k is the number of SNPs).}

\item{SNPidx}{a numeric vector representing the LDA of which SNPs (indices) are computed.
By default, SNPidx=NULL which specifies the LDA of all the SNPs will be computed.}

\item{SNPlimit}{a positive integer representing the maximum number of SNPs at each side of
a SNP that is used to calculate the pairwise LDA for the SNP.
The value shouldn't be larger than the total number of SNPs.
We may set a limit if the LDAs between SNPs far in distance are not to be investigated.}

\item{verbose}{logical. If verbose=TRUE, print the process of calculating the pairwise LDA for the i-th SNP.
By default, verbose=FALSE}
}
\value{
a data frame of the pairwise LDA, with SNPs in the decreasing
order of physical position on a chromosome.
}
\description{
Computation of the pairwise Linkage Disequilibrium of Ancestry (LDA) between all pairs of single nucleotide polymorphisms (SNPs).
}
\details{
Linkage Disequilibrium of Ancestry (LDA) quantifies the correlations
between the ancestry of two SNPs, measuring the proportion of individuals who
have experienced a recombination leading to a change in ancestry,
relative to the genome-wide baseline.
}
\examples{
\donttest{
# visualize the painting data
# Painting data are the average probabilities of different populations
head(LDAandLDAS::example_painting_p1[1:5,],10)

# combine the painting data for two populations as a list
# to make to input data for function 'LDA'.
paintings=list(LDAandLDAS::example_painting_p1,
               LDAandLDAS::example_painting_p2)

# calculate the pairwise LDA of SNPs
LDA_result <- LDA(paintings)

# if we only want to calculate the LDA of the 76th-85th SNP in the map
# based on the 31st-130th SNP, which aims at saving the memory
paintings2=list(LDAandLDAS::example_painting_p1[,31:130],
                LDAandLDAS::example_painting_p2[,31:130])
# note that the 76th-85th SNP in the original dataset is only the
# (76-30)th-(85-30)th SNP in the new dataset (paintings2)
LDA_result2 <- LDA(paintings2,SNPidx=76:85-30)
}

}
\references{
Barrie, W., Yang, Y., Irving-Pease, E.K. et al. Elevated genetic risk for multiple sclerosis emerged in steppe pastoralist populations. Nature 625, 321–328 (2024).
}
