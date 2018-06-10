# install.packages("lubridate")
library("lubridate")

# Allow Restarting R session (shift + ctrl/cmd + F10)
surveys <- read.csv("data/portal_data_joined.csv")

# Create a date object with `ymd()` and inspect the structure

date_chr <- "2015-01-01"
# Same
date_chr <- paste("2015", "1", "1", sep = "-")
# So 
years <- c(2015:2018)
months <- rep(1, 4)
days <- c(1:4)
date_chr <- paste(years, months, days, sep = "-")

# Compare
str(date_chr)
str(ymd(date_chr))
# Fails
date_chr + 1
# Works
ymd(date_chr) + 1

my_date <- ymd(date_chr) 
str(my_date)

# Now using surveys
surveys$date <- ymd(paste(surveys$year, surveys$month, surveys$day, sep = "-"))
# Same
surveys <- transform(surveys, date2 = ymd(paste(year, month, day, sep = "-")))
head(surveys)

# Explore parsing errors due to missing values
is_missing_date <- is.na(surveys$date)
missing_dates <- surveys[is_missing_date, c("year", "month", "day")]
unique(missing_dates)

# What's the problem? (Hint: check your calendar)