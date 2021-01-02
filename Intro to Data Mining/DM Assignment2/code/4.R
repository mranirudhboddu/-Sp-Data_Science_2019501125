
#4.a

setwd("D:\\Courses\\2nd Year\\4.Data Science\\-Sp-Data_Science_2019501125\\Intro to Data Mining\\DM Assignment2\\")

data <- read.csv("myfirstdata.csv",header = FALSE)

head(data)

c(is.factor(data[,1]),is.numeric(data[,1]))

c(is.factor(data[,2]),is.numeric(data[,2]))

#4.b

which.nonnumeric <- function (column) {
  which(is.na(suppressWarnings(as.numeric(as.character(column)))))
}

for (name in names(data)) {
  c <- data[[name]]
  r <- which.nonnumeric(c)
  v <- c[r]
  msg <- ''
  if (length(v)) {
    msg <- sprintf("data$%s is qualitative (%s[%d] == '%s')", name, name, r, as.character(v))
  } else {
    msg <- sprintf("data$%s is quantitive (all rows are numeric)", name)
  }
  print(msg)
}

#4.c
plot(data[,1],main="Value of V1")

#4.d
plot(data[,2],main="Value of V2")
