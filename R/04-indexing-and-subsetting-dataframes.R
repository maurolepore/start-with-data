# Using row- and column-indices (positoins) to subset data frames

# Allow Restarting R session (shift + ctrl/cmd + F10)
surveys <- read.csv("stuff/portal_data_joined.csv")

# Subsetting with positoins -----------------------------------------------

# WARNING: Temporarily change global options to print only a few lines
old <- options(max.print = 3)  # >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

# Position indices as coordinates of a dataframe (2d): df[rows, columns]
# dfm[ONE-ROW, ONE-COL]
# dfm[ALL-ROWS, ONE-COL]
# dfm[ONE-COL]
# dfm[SOME-ROWS, ONE-COL]
# dfm[one-row, ALL-COLS]
# same as head(dfm)
# BIGGER-NUMBER:SMALLER-NUMBER
# dfm[all, -ONE-COL]
# dfm[-c(SEQUENCE), ]

# Subsetting with column names --------------------------------------------

# dfm["ONE-COL-NAME"]
# dfm[, "ONE-COL-NAME"]
# dfm[["ONE-COL-NAME"]]
# dfm$ONE-COL-NAME

# Restore 
options(old)  # <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

# Challenge ---------------------------------------------------------------

# http://www.datacarpentry.org/R-ecology-lesson/02-starting-with-data.html#challenge9