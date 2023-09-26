require "io/console"
# password = ""
# loop do
# 	char = $stdin.getch
# 	break if char == "\n" || char == "\r"
# 	if char == '\b' || char.ord == 127
# 		password.chop!
# 		print("\b \b")
# 	else
# 		print("*")
# 		password << char
# 	end
# end
# puts(password)



# number = ''
# puts("Enter 10 Digit number")
# loop do
# 	num = $stdin.getch
# 	if num == "\r"
# 		if number.length == 10
# 			break
# 		end
# 	end
# 	if(num == '\b' || num.ord == 127 && !number.empty?)
# 		number.chop!
# 		print("\b \b")
# 	elsif(num =~ /[0-9]/)
# 		if number.length < 10
# 			print(num)
# 			number << num
# 		end
# 	end
# end