time = Time.now

print(time.to_s)
print(time.ctime)
print(time.localtime)



# Get specfic thing like we want


# format weekday name
print(time.strftime("%a"), "\n") # => Thu
print(time.strftime("%A"), "\n") # => Thursday


# format month
print(time.strftime("%B"), "\n") # => july

# or (The abbreviated month name (Jan).)
print(time.strftime("%b"), "\n") # => jul

# or (Month of the year (01 to 12).)
print(time.strftime("%m"), "\n") # => 07



# format day 
# (day of the month)
print(time.strftime("%d"), "\n") # => 06

# Day of the year (001 to 366).
print(time.strftime("%j"), "\n") # => 187

# Day of the week (Sunday is 0, 0 to 6).
print(time.strftime("%w"), "\n")



# format hour (hour of the day 24)
print(time.strftime("%H"), "\n") # => 14
# or (hour of the day 12)
print(time.strftime("%I"), "\n") # => 2




# format Minuts
# Minute of the hour (00 to 59).
print(time.strftime("%M"), "\n")



# format AM/PM
# Meridian indicator (AM or PM).
print(time.strftime("%p"), "\n")



# format second
# Second of the minute (00 to 60).
print(time.strftime("%S"), "\n")



# format week
# Week number of the current year, starting with the first Sunday as the first day of the first week (00 to 53).
print(time.strftime("%U"), "\n")

# Week number of the current year, starting with the first Monday as the first day of the first week (00 to 53).
print(time.strftime("%W"), "\n")



# Preferred representation for the date alone, no time.
print(time.strftime("%x"), "\n")
# Preferred representation for the time alone, no date.
print(time.strftime("%X"), "\n")


# Formet year
# Year with century.
print(time.strftime("%Y"), "\n") # => 2023
# Year without a century (00 to 99).
print(time.strftime("%y"), "\n") # => 23


# Time zone name.
print(time.strftime("%Z"), "\n")



# Time Arithmetic

# You can perform simple arithmetic with time as follows −

now = Time.now          # Current time
puts now

past = now - 10         # 10 seconds ago. Time - number => Time
puts past

future = now + 10  # 10 seconds from now Time + number => Time
puts future

diff = future - past     # => 10  Time - Time => number of seconds
puts diff