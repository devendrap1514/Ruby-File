# Ranges occur everywhere: January to December, 0 to 9, lines 50 through 67, and so on. Ruby supports ranges and allows us to use ranges in a variety of ways −

#     Ranges as Sequences
#     Ranges as Conditions
#     Ranges as Intervals


# Ranges as Sequences

# The sequence 1..100 is held as a Range object containing references to two Fixnum objects.
print((0..5).to_a, "\n")
print((0...5).to_a, "\n")
print(("a".."z").to_a, "\n")


digits = (0..9)

print(digits.include?(7), "\n")
print(digits.include?(11), "\n")

print(digits.min, "\n")
print(digits.max, "\n")
print(digits.select{ |num| num > 5}, "\n")
print(digits.reject{ |num| num > 5 }, "\n")

digits.each do |digit|
    print(digit, ", ")
end
puts()




# Ranges as Conditions

age = 50

result = case age
    when (1..12) then "children"
    when (13..17) then "adolescents"
    when (18..65) then "adult"
    when (65..150) then "older adult"
    else "Invalid age"
end

print(result, "\n")




# Ranges as Conditions

print((0..5) === 4 ? "4 lies in (0..5)" : "4 not lies (0..5)", "\n")
print(("a".."z") === "h" ? "h lies in ('a'..'z')" : "h not lies ('a'..z')", "\n")


