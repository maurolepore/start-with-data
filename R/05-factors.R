# Factors: Labelled **integers** (ordered or unordered) representing categories.

# TODO: Build a factor of length 4 with two levels representing sex categories.

# TODO: Try levels(), nlevels()

# TODO: Reorder levels

# Converting factors ------------------------------------------------------

# Convert factor with character-labels to character: 
# TODO: Coerce factor to character. E.g. `sex`

# Convert factor with numeric-labels: 
# TODO: Coerce factor to character; then character to numeric.
# * E.g. `year_fct` from c(1990, 1983, 1977, 1998, 1990)

# Hint: Always coerce factors to character first. Why?

# Renaming factors --------------------------------------------------------

# Allow Restarting R session (shift + ctrl/cmd + F10)
surveys <- read.csv("stuff/portal_data_joined.csv")


# TODO: plot() theh count of sex categories

# Rename missing values
# TODO: Create a working copy of surveys$sex named `sex`

# TODO: See that level 1 is missing

# TODO: Rename level 1 as "undetermined"

# TODO: Plot again to confirm missing values are now labelled

# Challenge ---------------------------------------------------------------

# http://www.datacarpentry.org/R-ecology-lesson/02-starting-with-data.html#challenge14

# Using stringsAsFactors = FALSE ------------------------------------------

# TODO: Read with `stringsAsFactors = TRUE` then `FALSE`.
# TODO: Show structure of each alternative.

# TODO: Convert the column "plot_type" into a factor using `$`

# Challenge ---------------------------------------------------------------

# http://www.datacarpentry.org/R-ecology-lesson/02-starting-with-data.html#challenge17

# Learn more
# https://github.com/tidyverse/forcats