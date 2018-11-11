###Package :readr
install.packages("readr")
library(readr)
read_delim("Data_File.csv",delim=",")
read_csv("Data_File.csv")

read_delim("Data_File.csv",delim=",",skip = 3,n_max = 7)
