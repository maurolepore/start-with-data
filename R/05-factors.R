# Factors: Labelled **integers** (ordered or unordered) representing categories.

# 1. Build a factor of length 4 with two levels representing sex categories.
sex <- factor(c("male", "female", "female", "male"))

# 2. Try levels(), nlevels()
levels(sex)
nlevels(sex)

# 3. Reorder levels
sex
sex <- factor(sex, levels = c("male", "female"))
sex

# Converting factors ------------------------------------------------------


# 1. Convert factor with character-labels to character: 
# Coerce factor to character. E.g. `sex`
as.character(sex)

# 2. factor with numeric-labels: 
# Coerce factor to character; then character to numeric.
# E.g. `year_fct` from c(1990, 1983, 1977, 1998, 1990)
year_fct <- factor(c(1990, 1983, 1977, 1998, 1990))
as.numeric(year_fct)
as.numeric(as.character(year_fct))

# Hint: Always coerce factors to character first. Why?

# Renaming factors --------------------------------------------------------

# Allow Restarting R session (shift + ctrl/cmd + F10)
surveys <- read.csv("data/portal_data_joined.csv")


# 1. Plot number of females and males
plot(surveys$sex)

# 2. Rename missing values
# 2.1. Create a working copy of surveys$sex named `sex`
sex <- surveys$sex
# 2.2. Show that level 1 is missing
sex[1:20]
levels(sex)
# 2.3. Rename level 1 as "undetermined"
levels(sex)[1] <- "undetermined"
# 2.4. Plot again
plot(sex)


# Challenge ---------------------------------------------------------------

# http://www.datacarpentry.org/R-ecology-lesson/02-starting-with-data.html#challenge14

# Using stringsAsFactors = FALSE ------------------------------------------

# 1. Show `str()` of data read with `stringsAsFactors = T` then `F`.
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