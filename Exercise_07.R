# Q1
get_odd_rows <- function(df) {
  odd_index<-seq(1,nrow(df),2)
  return(df[odd_index,])
}

# Q2
iris <- read.csv("iris.csv", header=TRUE)
# write function to find number of a given species
num_species <- function(species) {
  return(nrow(iris[iris$Species==species,]))
}

# write function to find entries with sepal width greater than a given value
sepal_width <- function(value) {
  return(iris[iris$Sepal.Width>value,])
}

# write function to put data of a given species to a csv file
species_csv <- function(species) {
  write.csv(iris[iris$Species==species,], file=paste(species,"csv",sep="."))
}
