class Book
    attr_accessor :title, :author, :length
    def assign_values(values)
        values.each_key do |k, v|
            self.send("#{k}=", values[k])
        end
    end
end


book_info = {
    "title" => "Forrest Gump",
    "author" => "Winston Groom",
    "length" => 300
}

book = Book.new

book.assign_values(book_info)

pp book