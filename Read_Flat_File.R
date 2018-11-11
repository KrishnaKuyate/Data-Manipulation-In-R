##Load the "utils" package
library(utils)


##read.table function

read.table("Data_File.csv",header = TRUE,sep = ",",stringsAsFactors = FALSE)->File_to_datafrm

?read.table

##read.csv() function

read.csv("Data_File.csv",stringsAsFactors = FALSE)

##read txt file using read.table function

read.table("Data_In_Text.txt",header = TRUE,sep = "\t",stringsAsFactors = FALSE)

read.delim("Data_In_Text.txt",stringsAsFactors = FALSE)

####if file is from different directory
path<-file.path("-","Study Point","MSTR","MSTR and R","Cardio Dataset","CardioGoodFitness.csv")
path
read.table(path,header = TRUE,sep=",",stringsAsFactors = FALSE)

##Copy file 
?file.copy()

file.copy("Data_File.csv","Data_File1.csv")

##Create new file

file.create("Krishna.csv",showWarnings = TRUE)
file.create("sham.csv",showWarnings = TRUE)

##rename file

file.rename("Krishna.csv","Ram.csv")

##remove file

file.remove("Ram.csv")


###append file names
file.append("Krishna.csv", "sham.csv")

