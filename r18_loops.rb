# Ruby retry Statement
# Syntax

# retry

# begin
#     do_something # exception raised
#  rescue
#     # handles error
#     retry  # restart from beginning
# end

# v = "str"
# begin
#   raised "str"/2
# rescue v = 2
#   retry
# end

# i = 1
# while i <= 5 do
#     if i == 2 then
#         puts(i)
#         retry
#     end
#     i += 1
# end