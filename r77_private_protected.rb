class Animal
  def animal_call
    protect_me
  end
  protected
  def protect_me
    p "protect_me called from #{self.class}"
  end
  private
  def private_me
  	p "private_me called from #{self.class}"
  end
end


n= Animal.new
n.animal_call #=> protect_me called from Animal
# n.protect_me #=>error: protected method `protect_me' called

class Mammal < Animal
  def mammal_call
    protect_me
  end
end 


n= Mammal.new
n.mammal_call #=> protect_me called from Mammal


class Amphibian < Animal
  def amphi_call
  	mamm = Mammal.new
    mamm.protect_me #Receiver same as self
    self.protect_me  #Receiver is self
  end   
end

n= Amphibian.new
n.amphi_call #=> protect_me called from Mammal
             #=> protect_me called from Amphibian  


class Tree
  def tree_call
    Mammal.new.protect_me #Receiver is not same as self
  end
end


n= Tree.new
n.tree_call #=>error: protected method `protect_me' called for #<Mammal:0x13410c0>
