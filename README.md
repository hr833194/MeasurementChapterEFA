
# Exploratory Factor Analysis

Performing an Exploratory Factor Analysis on metrics collected by analyzing the Apache Maven Source Code. We present a subset of the metrics for this example. We follow the guidelines provided by Hair et. al in his book Multivariate Data Analysis.

This replication package contains material required to replicate our results. This anonymous website is used for the anonymous peer review, but after acceptance, our replication package will be permanently archived on Zenodo. 

## Data

A spreadsheet containing code quality metrics collecting on Apache Maven Source Code is the dataset for this example (./efaReadyMC.xlsx).

## Results of the EFA

The [Results](./Results) directory contains the output of the commands that were used when running the EFA using the [R Script](./RCode.R) in the form of .txt files. 

It also contains the [Results of EFA](./Results/Results.xlsx) spreadsheet which tabulates the output of the commands for easier interpretation and shows the different stages of the EFA.

## Results of KMO and Bartlett's tests

The results of the [KMO Test](./kmo_bartlett/KMOtest.txt) and [Bartlett's Test](./kmo_bartlett/Bartlettstest.txt).

## Scripts to run the EFA 

[This](./RCode.R) contains the script to conduct the EFA.


## Deriving Factors

The [Deriving Factors](./derivingFactors) directory contains the results of the Parallel Analysis, Kaiser Criteria, and Scree Plot which are used to select the number of factors in the EFA. 


