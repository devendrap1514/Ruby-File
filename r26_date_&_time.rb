print(Time.now, "\n")


time = Time.new

print("Current Year is => ",time.year, "\n")
print("Current Month is => ", time.month, "\n")
print("Current Day is => ", time.day, "\n")
print("Current Hour is => ", time.hour, "\n")
print("Current Minute is => ", time.min, "\n")
print("Current Second is => ", time.sec, "\n")
print("Current usec is => ", time.usec, "\n")
print("Current Timezone is => ", time.zone, "\n")
print("Current Week Day is => ", time.wday, "\n")
print("Current Year Day is => ", time.yday, "\n")

puts()



print(%<[sec,min,hour,day,month,year,wday,yday,isdst,zone]\n>)
time = Time.new
values = time.to_a
p values


print("UTC => ", Time.utc(*values), "\n")


# Returns number of seconds since epoch
print("Time in seconds => ", time.to_i, "\n")

# Convert number of seconds into Time object.
print("Time Object => ", Time.at(time), "\n")

# Returns second since epoch which includes microseconds
print("Second with Microsecond => ", Time.now.to_f, "\n")

time = Time.new

# Here is the interpretation
print "Time Zone => ", time.zone, "\n"       # => "UTC": return the timezone
print "UTC offset => ", time.utc_offset, "\n" # => 0: UTC is 0 seconds offset from UTC
print "is DST => ", time.isdst, "\n"      # => false: If UTC does not have DST.
print "is UTC time zone => ", time.utc?, "\n"       # => true: if t is in UTC time zone
print "local time => ", time.localtime, "\n"  # Convert to local timezone.
print "utc time => ", time.gmtime, "\n"     # Convert back to UTC.
print "time object in local zone => ", time.getlocal, "\n"   # Return a new Time object in local zone
print "time object in UTC => ", time.getutc, "\n"     # Return a new Time object in UTC

