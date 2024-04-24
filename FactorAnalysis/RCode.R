library(psych)
library(readxl)
library(REdaS)
library(paran)
library(EFA.dimensions)
library(ltm)

options(max.print = 99999)

#Attach the dataset efaReadyMC.xlsx
efadataset <- read_excel("./efaReadyMC.xlsx")
View(efadataset)        
attach(efadataset)

#Perform KMO Test
sink(file = "./kmo_bartlett/KMOtest.txt")
KMO(efadataset)
sink(file = NULL)

#Perform Bartlett's test
sink(file = "./kmo_bartlett/Bartlettstest.txt")
bart_spher(efadataset)
sink(file = NULL)

# Parallel Analysis
sink(file = "./derivingFactors/parallelAnalysis.txt")
paran(efadataset, cfa=TRUE, graph=TRUE, 
      color=TRUE, col=c("black","red","blue"))
sink(file = NULL)

# Scree Plot
nofactors = fa.parallel(efadataset, fm="pa", fa="fa")
nofactors

# Kaiser Criterion
sink(file = "./derivingFactors/kaiserCriteria.txt")
nofactors = fa.parallel(efadataset, fm="pa", fa="fa")
nofactors
sink(file = NULL)

# 21 Factors
sink(file = "./Results/21Factors.txt")
fa(efadataset, nfactors = 21, rotate =  "oblimin")
sink(file = NULL)

# 7 Factors
sink(file = "./Results/7Factors.txt")
fa(efadataset, nfactors = 7, rotate =  "oblimin")
sink(file = NULL)

# 6 Factors
sink(file = "./Results/6Factors.txt")
fa(efadataset, nfactors = 6, rotate =  "oblimin")
sink(file = NULL)

# Removing Cohesion.LCOM5
sink(file = "./Results/6Factors-1.txt")
fa(efadataset[,-c(15)], nfactors = 6, rotate =  "oblimin")
sink(file = NULL)

# Removing Size.CountDeclMethodDefault
sink(file = "./Results/6Factors-2.txt")
fa(efadataset[,-c(15, 5)], nfactors = 6, rotate =  "oblimin")
sink(file = NULL)

# Removing  Size.CountInstanceVariable
sink(file = "./Results/6Factors-3.txt")
fa(efadataset[,-c(15, 5, 4)], nfactors = 6, rotate =  "oblimin")
sink(file = NULL)