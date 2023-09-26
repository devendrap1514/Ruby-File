colors = {"black"=> "#000000", "white"=> "#ffffff"}

puts(colors)

colors.each do |key, value|
    print key, " is ", value, "\n"
end

colors = {"black": "#000000", "white": "#ffffff"}

puts(colors)



# Write a function that sorts the keys in a hash by the length of the key as a string

hsh = {"sdf" => "three", "hs" => "two", "efsd" => "fourth", "z" => "one"}

# key, value take as argument is necesserly
t = hsh.sort_by{|key, value| key.length}  # return array as key value
print(t, "\n")
print(t.to_h, "\n")
print(hsh, "\n")