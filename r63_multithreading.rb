def fun1
    i = 0
    while i <= 2
        sleep(5)  # argument in seconds
        i+=1
        puts("fun1: #{i}")
    end
end

def fun2
    i = 0
    while i <= 2
        i+=1
        sleep(2)
        puts("fun2: #{i}")
    end
end

x=Thread.new { fun1() };
y=Thread.new{ fun2() };
# after creating the threads, we use the join method to waitfor the threads to finish executing before the proceeding with the main thread
# this ensure that the main thread does not exit before the other threads complete their execution
x.join
y.join
puts("End")