# A regular expression is a special sequence of characters that helps you match or find other strings or sets of strings using a specialized syntax held in a pattern.


#  The main difference between +~ or match is the match return value that are matched or =~ means return index


line1 = "Cats are smarter than dogs";
line2 = "Dogs also like meat";

puts(line1 =~ /Cats/)   # return index if match otherwise return nil

puts(line1.match("Cats")) 
puts(line1.match(/Cats/))


# Character Classes

# A character class lets you define a range or a list of characters to match. For example, [aeiou] matches any vowel.

# Example: Does the string contain a vowel?
def contains_vowel(str)
  str =~ /[aeiou]/
end
puts(contains_vowel("test")) # returns 1
puts(contains_vowel("sky"))  # returns nil

# Ranges

# We can use ranges to match multiple letters or numbers without having to type them all out. In other words, a range like [2-5] is the same as [2345].

# Some useful ranges:

#     [0-9] matches any number from 0 to 9
#     [a-z] matches any letter from a to z (no caps)
#     [^a-z] negated range


puts("4" =~ /[0-9]/)
puts("2345" =~ /[4-9]/)
puts("2345".match(/[1-9]/))



# Remember: the return value when using `=~` is either the string index or `nil`

# There is a nice shorthand syntax for specifying character ranges:

#     \w is equivalent to [0-9a-zA-Z_]
#     \d is the same as [0-9]
#     \s matches white space (tabs, regular space, newline)

# There is also the negative form of these:

#     \W anything that’s not in [0-9a-zA-Z_]
#     \D anything that’s not a number
#     \S anything that’s not a space
#     There is a nice shorthand syntax for specifying character ranges:

#     \w is equivalent to [0-9a-zA-Z_]
#     \d is the same as [0-9]
#     \s matches white space (tabs, regular space, newline)

# There is also the negative form of these:

#     \W anything that’s not in [0-9a-zA-Z_]
#     \D anything that’s not a number
#     \S anything that’s not a space


# how to check pattern in string
# \W anything that’s not in [0-9a-zA-Z_]

puts("sdlfuh44%$#" =~ /\W/)  # 8

puts("132".match(/\d\d/))  # 13 find first interger and then find to second integer
puts("132".match(/\d/))  # 1 find single integer that first occur
puts("132" =~ /\d\d/)  # 0

# The dot character . matches everything but new lines. If you need to use a literal . then you will have to escape it.

puts("132.412" =~ /\d.\d/) # 0 return index if matches "integer" "escape" "integer"
puts("132.412".match(/\d.\d/)) # 132 return index if matches "integer" "escape" "integer"
puts("132.431" =~ /\D.\D/)  # nil because "without number" "escape char" "without number" not exist in string


puts("sdfh498" =~ /\w\w/) # return index if two char found
puts("sdfh498".match(/\w\w/))  # return value if two char found


def ip_address?(str)
    # We use !! to convert the return value to a boolean
    # check if . is available in string so 
    !!(str =~ /\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}/)
end

puts(ip_address?("192.168.1.1"))
puts(ip_address?("192.1468.1.1"))
puts(ip_address?("0000.0000"))

print(!!nil)
print(!!("Hello" =~ /\W/))