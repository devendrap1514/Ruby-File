
# begin  
#     # -  
#     rescue OneTypeOfException  
#     # -  
#     rescue AnotherTypeOfException  
#     # -  
#     else  
#     # Other exceptions
#     ensure
#     # Always will be executed
# end

# begin
#     "helo"/2
# rescue => exception
#     puts(exception.message)
# else
#     # run if no exception
#     puts("else")
# ensure
#     puts("ensure")
# end


def promptAndGet(prompt)
   print prompt
   res = readline.chomp
   throw :quitRequested if res == "!"
   return res
end

catch :quitRequested do
   name = promptAndGet("Name: ")
   age = promptAndGet("Age: ")
   sex = promptAndGet("Sex: ")
   # ..
   # process information
end
promptAndGet("Name:")