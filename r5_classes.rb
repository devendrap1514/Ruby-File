# Classes
# class Customer
#   @@no_of_customers = 0
#   def getNoOfCustomer
#     return @@no_of_customers
#   end
# end


# c1 = Customer.new
# puts c1.getNoOfCustomer


class Customer
    @@no_of_customers = 0
    @id = -1
    @name = ""
    def initialize(id, name)
      @id = id
      @name = name
      @@no_of_customers += 1
    end
    
    def getNoOfCustomer
      return @@no_of_customers
    end
  end
  
  c1 = Customer.new(33, "Devendra")
  puts c1.getNoOfCustomer
  
  