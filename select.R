View(iris)

mtdf<-as.data.frame(mtcars)


###Select variables

iris <- as_tibble(iris) # so it prints a little nicer


select(iris, starts_with("Petal"))
select(iris, ends_with("Width"))
