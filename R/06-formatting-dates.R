# install.packages("lubridate")
# TODO: Load ("open") __lubridate__

# Allow Restarting R session (shift + ctrl/cmd + F10)
surveys <- read.csv("stuff/portal_data_joined.csv")

# TODO: Create a date object with `ymd()` and inspect the structure

# TODO: Compare structure of a string and date object

# TODO: Sum 1 + date_chr
# TODO: Sum 1 + date_date

# TODO: Create a `date` col in `surveys` from its vars `year`, `month` and `day`
# TODO: See first few lines of `surveys`

# Explore parsing errors due to missing values
# TODO: Create a logical vector of positions of missing values of `date`
# TODO: Subset `surveys` with the logical vector created above
# TODO: See unique values of missing dates

# What's the problem? (Hint: check your calendar)