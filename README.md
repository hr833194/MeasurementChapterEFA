
# Exploratory Factor Analysis

Performing an Exploratory Factor Analysis on metrics collected by analyzing the Apache Maven Source Code. We present a subset of the metrics for this example. We follow the guidelines provided by Hair et. al in his book Multivariate Data Analysis.

This replication package contains material required to replicate our results. This anonymous website is used for the anonymous peer review, but after acceptance, our replication package will be permanently archived on Zenodo. 

## Dataset

A [spreadsheet](./FactorAnalysis/efaReadyMC.xlsx) containing code quality metrics collected on Apache Maven Source Code is the dataset for this example.

## Code Quality Metrics

The metrics collected in the dataset are calculated by three software tools: Designite, Understand, and JHawk on Apache Maven Source code. The definitions of these metrics can be found in the [Code Quality Metrics Documentation](./FactorAnalysis/CodeQualityMetrics/CodeQualityMetricsFA.xlsx).

Additionally, the original documentation provided by the software tools can be found in [here](./toolsDocumentation).

## Results of the EFA

The [Results](./FactorAnalysis/Results) directory contains the output of the commands that were used when running the EFA using the [R Script](./FactorAnalysis/RCode.R) in the form of .txt files. 

It also contains the [Results of EFA](./FactorAnalysis/Results/Results.xlsx) spreadsheet which tabulates the output of the commands for easier interpretation and shows the different stages of the EFA.

## Results of KMO and Bartlett's tests

The results of the [KMO Test](./FactorAnalysis/kmo_bartlett/KMOtest.txt) and [Bartlett's Test](./FactorAnalysis/kmo_bartlett/Bartlettstest.txt).

## Scripts to run the EFA 

An [R script](./FactorAnalysis/RCode.R) is run to conduct the EFA.


## Deriving Factors

The [Deriving Factors](./FactorAnalysis/derivingFactors) directory contains the results of the [Parallel Analysis](./FactorAnalysis/derivingFactors/parallelAnalysis.txt), [Kaiser Criteria](./FactorAnalysis/derivingFactors/kaiserCriteria.txt), and [Scree Plot](./FactorAnalysis/derivingFactors/screePlot.pdf) which are used to select the number of factors in the EFA. 


# Reliability Analysis

The [Reliability](./Reliability) directory contains the [R Script](./Reliability/RCodeReliability.R) used for the reliability analysis along with the [dataset](./Reliability/reliabilityDataset.xlsx).

The metrics collected in the dataset are calculated by three software tools: Designite, Understand, and JHawk on Apache Maven Source code. The definitions of these metrics can be found in the [Code Quality Metrics Documentation](./Reliability/CodeQualityMetrics/CodeQualityMetricsListR.xlsx).

Additionally, the original documentation provided by the software tools can be found in [here](./toolsDocumentation).
