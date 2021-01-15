# install cesR package from GitHub repo
devtools::install_github("hodgettsp/cesR")



# load cesR intro R workspace using library()
library(cesR)



# call associated CES survey codes using get_cescodes()
# this function takes no arguments
get_cescodes()



# get a preview of a CES survey dataset by using the get_preview() function
# this function takes two arguments ->
# the first is a survey name ->
# the second is the number of rows to return ->
# row value can be left empty and will return a default value of 6 rows
get_preview("ces2011", 10)
head(ces2011_preview, 10)

get_preview("ces2004")
head(ces2004_preview)

# remove previews from R environment
rm(ces2004_preview)
rm(ces2011_preview)



# call and load a CES survey dataset into the R environment using the get_ces() function
# this function takes one argument ->
# a CES survey call name
# the function temporarily downloads the CES survey ->
# loads the data into the R environment under the called name ->
# then removes the downloaded files
get_ces("ces2004")

head(ces2004)



# check what question was asked for a survey question using the get_question() function
# this function takes two arguments ->
# the first is the character string of the loaded survey dataset ->
# the second is the character string of a question code in that survey
get_question("ces2004", "cps_c1")



# load a pre-organized, built-in dataset using the get_decon() function
# decon stands for demographics/economy
# this function takes no arguments
# it loads in a subset of the 2019 Online CES survey ->
# and contains varaiables relating to demographic and economic survey questions
get_decon()

head(decon)



# install the labelled package from CRAN
install.packages("labelled")

# load the labelled package into the R working space
library(labelled)



# factorize ces2004 data using the to_factor() function from the labelled package
ces2004_factor <- labelled::to_factor(ces2004)


head(ces2004_factor)

