# In Ruby, when you attempt to convert a string to an integer using the "to_i" method, it extracts the leading numeric characters from the string  and converts them to an integer if the first character of the string is not a numeric character the conversion will result  in zero

puts("123abc".to_i)  # Output: 123
puts("abc123".to_i)  # output: 0