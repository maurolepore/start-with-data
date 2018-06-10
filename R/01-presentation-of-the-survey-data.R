# http://www.datacarpentry.org/R-ecology-lesson/02-starting-with-data.html

# Objectives: Define and use 3 data structures in R -----------------------

# 1. dataframes (2d) ~ spreadsheet.
# 2. factors (1d) ~ strings represent integer.
# 3. dates (1d) ~ strings represent dates.

# Download data -----------------------------------------------------------

# ?download.file(): Download File from the Internet.
# * From: https://ndownloader.figshare.com/files/2292169
# * To: data/portal_data_joined.csv
# FIXME: Hint: What's the output of dir.exists("data")?
dir.create("data")
download.file(
  url = "https://ndownloader.figshare.com/files/2292169", 
  destfile = "data/portal_data_joined.csv"
)

# Read data ---------------------------------------------------------------

# ?read.csv(): Data Input.
# * From: data/portal_data_joined.csv
# * To: surveys
surveys <- read.csv("data/portal_data_joined.csv")
head(surveys)

# Bonus: Read and view more elegantly -------------------------------------

# ?read.csv()
# > file can also be a complete URL.
url <- "https://ndownloader.figshare.com/files/2292169"
surveys <- read.csv(url)
# ?View(): Invoke a Data Viewer
View(surveys)

# Learn more --------------------------------------------------------------

# ?read.csv():
# * sep (e.g. "\t")
# * na.strings
# * colClasses
# * stringsAsFactors