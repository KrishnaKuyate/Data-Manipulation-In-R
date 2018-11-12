install.packages("RMySQL")
library(DBI)


if (mysqlHasDefault()) {
  # connect to a database and load some data
  con <- dbConnect(RMySQL::MySQL(), dbname = "test")
  dbWriteTable(con, "USArrests", datasets::USArrests, overwrite = TRUE)
  
  # query
  rs <- dbSendQuery(con, "SELECT * FROM USArrests")
  d1 <- dbFetch(rs, n = 10)      # extract data in chunks of 10 rows
  dbHasCompleted(rs)
  d2 <- dbFetch(rs, n = -1)      # extract all remaining data
  dbHasCompleted(rs)
  dbClearResult(rs)
  dbListTables(con)
  
  # clean up
  dbRemoveTable(con, "USArrests")
  dbDisconnect(con)
}

.MySQLPkgName (currently "RMySQL"), .MySQLPkgVersion (the R package version), .MySQLPkgRCS (the RCS revision), .MySQLSQLKeywords (a lot!)