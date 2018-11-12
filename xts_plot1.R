###XTS and ZOO

install.packages("xts")
library(xts)
library(zoo)



## Add vertical lines and labels to an existing xts plot

data(sample_matrix)
sample.xts <- as.xts(sample_matrix)
events <- xts(letters[1:3], 
              as.Date(c("2007-01-12", "2007-04-22", "2007-06-13")))
plot(sample.xts[,4])
addEventLines(events, srt=90, pos=2)

## End(Not run)