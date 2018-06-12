# http://www.datacarpentry.org/R-ecology-lesson/02-starting-with-data.html

# Objectives: Define and use 3 data structures in R -----------------------

# 1. dataframes (2d) ~ spreadsheet.
# 2. factors (1d) ~ strings represent integer.
# 3. dates (1d) ~ strings represent dates.

# Download data -----------------------------------------------------------


# ?download.file(): Download File from the Internet.
# TODO: download file
# * From: https://ndownloader.figshare.com/files/2292169
# * To: data/portal_data_joined.csv
# FIXME: Hint: What's the output of dir.exists("data")?

# Read data ---------------------------------------------------------------

# ?read.csv(): Data Input.
# TODO: Read data from data/portal_data_joined.csv into surveys
# TODO: View first few lines

# Note --------------------------------------------------------------------

# TODO: Discuss rhese arguments of read.csv()
# * sep (e.g. "\t")
# * na.strings
# * colClasses
# * stringsAsFactors

# Bonus: Read and view more elegantly -------------------------------------

# ?read.csv(): `file` can also be a complete URL.
# TODO: Download and read in one step.
# TODO: Discuss problems of this approach.
# ?View(): Invoke a Data Viewer
# TODO: View and filter data.
