class Book
    @@totalBooks = 0
    def initialize()
        @@totalBooks += 1
    end
    def Book.totalBooks()
        puts(@@totalBooks)
    end
    
    def self.className()
        puts("Book")
    end
end

Book.totalBooks()
Book.className()