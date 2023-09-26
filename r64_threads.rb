# threads = []

# 10.times { |i|
#     # << is used to push item in array
#     threads<<Thread.new{puts i}
#     # OR
#     # threads.push(Thread.new{puts i})
# }
# threads.each do |thread|
#     thread.join()
# end



# threads = []

# 10.times { |i|
#     thread = Thread.new{puts i}
#     threads<<thread
# }
# threads.each do |thread|
#     thread.join()
# end


thread = Thread.start{
    begin
        45/0
    end
}
thread.abort_on_exception = true
thread.join()