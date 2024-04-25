#install the required libraries
for (p in c("tidyverse", "irr")) {
  if (!requireNamespace(p)) {
    install.packages(p)
  }
}
library(tidyverse)
library(irr)

#read the file from downloads folder
rel_data = read_excel("./reliabilityDataset.xlsx")

#select the necessary columns to analyze
rel1_data <- select(rel_data, 'Size.LOC.Designite', 'Size.LOC.JHawk', 'Size.LOC.Understand')

# Function to calculate percent agreement
calculate_percent_agreement <- function(data) {
  # Count how many rows have all values the same
  agree_count <- sum(apply(data, 1, function(x) length(unique(x)) == 1))
  total_count <- nrow(data)
  return(agree_count / total_count * 100)
}

# Calculate percent agreement
percent_agreement <- calculate_percent_agreement(rel1_data)
print(paste("Percent Agreement: ", percent_agreement, "%", sep = ""))

#CALCULATING KALPHA

#convert data to correct shape for the calculation
rel1_data <- as.data.frame(t(rel1_data))

#convert new data shape to a matrix which is expected for kripp alpha calculation
rel2_data <- as.matrix(rel1_data)

#calculate krippendorff's alpha
kripp.alpha(rel2_data, method = "nominal")

