# https://www.akshaykhot.com/throw-and-catch-in-ruby/
# def promptAndGet(prompt)
#     print prompt
#     res = readline.chomp
#     if res == "!"
#         throw :quitRequested, "Invalid Input"
#     end
#     rescue
#         puts("World")
#     return res
# end

# catch :quitRequested do
# puts("Hello")
# name = promptAndGet("Name: ")
# age = promptAndGet("Age: ")
# sex = promptAndGet("Sex: ")
# end
# rescue => e
#     puts("Hello: #{e}")



# def perform_operation(num)
#     catch :operation_error do
#         puts "Performing operation..."
#     if num < 0
#         throw :operation_error, "Invalid error"
#     end
#     puts 'operation Successfull'
# end
# rescue => e
#     puts ("Error: #{e}")

# end

# perform_operation(10)
# perform_operation(-5)


msg = catch(:tag) do
    # do something
    
    throw :tag, 'no match found'
    
    puts 'this is not executed'
  end
  rescue
    puts("rescue")
  
  puts msg  # no match found