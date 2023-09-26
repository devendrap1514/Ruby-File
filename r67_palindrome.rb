

print("Enter : ")
str = gets().chomp

low = 0
high = str.length()-1
medium = (high / 2).to_i
isPalindrome = false

while low < medium
    if str[low] == str[high]
        low += 1
        high -= 1
        isPalindrome = true
    else
        isPalindrome = false
        break
    end
end

if isPalindrome
    puts("Palindrome")
else
    puts("Not palindrome")
end