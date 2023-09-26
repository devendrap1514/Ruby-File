file = File.new("r37.txt", "r+")

# for write
# file.syswrite("Hello")
file.each_byte {|ch| putc ch; putc ?. }
