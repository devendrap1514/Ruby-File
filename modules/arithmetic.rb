module Arithmetic
    PI = 3.27
    def Arithmetic.add(*param)
        sum = 0
        for value in param do
            sum += value
        end
        sum
    end
    
    def Arithmetic.subs(*param)
        add(*param)
    end

    def Arithmetic.div(num1 = 1, num2 = 1)
        num1/num2
    end

    def Arithmetic.mod(num1 = 1, num2 = 1)
        num1 % num2
    end
end