#assigning variables
x <- 22
y <- "hello"

#explicit print
print(x)
#auto print
y

#integer sequence
z <- 11:30
z

#nummeric object(1.0)
print(1)
#integer object(1)
print(1L)

#concatenate things together
x1 <- c(0.5, 0.6)       ## numeric
x2 <- c(TRUE, FALSE)    ## logical
x3 <- c(T, F)           ## logical
x4 <- c("a", "b", "c")  ## character
x5 <- 9:29              ## integer
x6 <- c(1+0i, 2+4i)     ## complex
x1

#vector() to initialize vectors
y1 <- vector("numeric", length = 10) 
y1

#list can have different and same classes
#vector can have only same classes, if mixed it will convert to one class
y2 <- c(1.7, "a")   ## character
y3 <- c(TRUE, 2)    ## numeric
y4 <- c("a", TRUE)  ## character

#convert from one class to another
x <- 0:6
class(x)
as.numeric(x)
as.logical(x)
as.character(x)

#cant covert to different class
x <- c("a", "b", "c")
as.numeric(x)
as.logical(x)
as.complex(x)

#matrix can hold only same classes type
# empty matrix
m <- matrix(nrow = 2, ncol = 3) 
m
#matrix dimension
dim(m)
attributes(m)

#matrix constructed column-wise
m <- matrix(1:6, nrow = 2, ncol = 3) 
m

#use vectors to create matrix
m <- 1:10 
m
dim(m) <- c(2, 5)
m

#create matrix by column-binding
x <- 1:3
y <- 10:12
cbind(x, y)
#create matrix by row-binding
rbind(x, y) 

#list function
x <- list(1, "a", TRUE, 1 + 4i) 
x
#empty list
x <- vector("list", length = 5)
x

#factors are used to represent categorical data
x <- factor(c("yes", "yes", "no", "yes", "no")) 
x
#table from factors
table(x) 
# changwt order of levels
x <- factor(c("yes", "yes", "no", "yes", "no"),
            levels = c("yes", "no"))
x


#missing values
## Create a vector with NAs in it
x <- c(1, 2, NA, 10, 3)  
## Return a logical vector indicating which elements are NA
is.na(x)    
## Return a logical vector indicating which elements are NaN
is.nan(x)   
## Now create a vector with both NA and NaN values
x <- c(1, 2, NaN, NA, 4)
is.na(x)
is.nan(x)


#data frame can hold different claases type
x <- data.frame(foo = 1:4, bar = c(T, T, F, F)) 
x
#number of rows
nrow(x)
#number of columns
ncol(x)
#convert data frame to matrix using data.matrix()
#create data frame using read.table() or read.csv()


#assign names to integer vector
x <- 1:3
names(x)
names(x) <- c("New York", "Seattle", "Los Angeles") 
x
names(x)

#list can also have name
x <- list("Los Angeles" = 1, Boston = 2, London = 3) 
x
names(x)

#matrix row and columns can have names
m <- matrix(1:4, nrow = 2, ncol = 2)
dimnames(m) <- list(c("a", "b"), c("c", "d")) 
m
#set rows and columns names separately
colnames(m) <- c("h", "f")
rownames(m) <- c("x", "z")
m
#data frame setting row name using 'row.names()'
#data frame setting columns name using 'names()'
