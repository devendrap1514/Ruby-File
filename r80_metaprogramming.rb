Language = Class.new do
  # define_method :interpret do
  #   puts "Interpreting"
  # end
  define_method :interpret do |arg|
    puts(arg)
  end
  define_method :method_missing do |name, *args|
    puts("Method #{name} doesn't exist on #{self.class}")
  end
end


l = Language.new

puts(l.send(:interpret, " jhjk "))
l.sum
