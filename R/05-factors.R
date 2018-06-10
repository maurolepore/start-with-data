# Factors: Labelled **integers** (ordered or unordered) representing categories.

# Build a factor of length 4 with two levels representing sex categories.
sex <- factor(c("male", "female", "female", "male"))

# Try levels(), nlevels()
levels(sex)
nlevels(sex)

# Reorder levels
sex
sex <- factor(sex, levels = c("male", "female"))
sex

# Converting factors ------------------------------------------------------


# Convert factor with character-labels to character: 
# * Coerce factor to character. E.g. `sex`
as.character(sex)

# Convert factor with numeric-labels: 
# * Coerce factor to character; then character to numeric.
# * E.g. `year_fct` from c(1990, 1983, 1977, 1998, 1990)
year_fct <- factor(c(1990, 1983, 1977, 1998, 1990))
as.numeric(year_fct)
as.numeric(as.character(year_fct))

# Hint: Always coerce factors to character first. Why?

# Renaming factors --------------------------------------------------------

# Allow Restarting R session (shift + ctrl/cmd + F10)
surveys <- read.csv("data/portal_data_joined.csv")


# Plot number of females and males
plot(surveys$sex)

# Rename missing values
# Create a working copy of surveys$sex named `sex`
sex <- surveys$sex

# Show that level 1 is missing
sex[1:20]
levels(sex)

# Rename level 1 as "undetermined"
levels(sex)[1] <- "undetermined"
# Plot again
plot(sex)

# Challenge ---------------------------------------------------------------

# http://www.datacarpentry.org/R-ecology-lesson/02-starting-with-data.html#challenge14

# Using stringsAsFactors = FALSE ------------------------------------------

# Show `str()` of data read with `stringsAsFactors = T` then `F`.
surveys <- read.csv("data/portal_data_joined.csv", stringsAsFactors = TRUE)
str(surveys)
surveys <- read.csv("data/portal_data_joined.csv", stringsAsFactors = FALSE)
str(surveys)

# Convert the column "plot_type" into a factor in place using `$`
surveys$plot_type <- factor(surveys$plot_type)

# Challenge ---------------------------------------------------------------

# http://www.datacarpentry.org/R-ecology-lesson/02-starting-with-data.html#challenge17

# Learn more
# https://github.com/tidyverse/forcats