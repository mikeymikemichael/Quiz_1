# 9. Build a Ruby class called "Book". Objects of the Book class must have
# two attributes: title and chapters. Objects must have two methods:
# add_chapter and chapters. The `add_chapter` methods adds a chapter by giving
# it a title. The chapters method should display the number of chapters and
# lists all the chapters as in:
#
# 1 book = Book.new
# 2 book.title = "My Awesome Book"
# 3 book.add_chapter("My Awesome Chapter 1")
# 4 book.add_chapter("My Awesome Chapter 2")
# 5 book.chapters
# 6 # This should print:
# 7 # Your book: My Awesome Book has 2 chapters:
# 8 # 1. My Awesome Chapter 1
# 9 # 2. My Awesome Chapter 2

class Book
  attr_accessor :title; :chapters;

  def initialize(title, chapters)
    @title = title
    @chapters = chapters
  end

  def add_chapter=(new_chapter)
    @title = new_chapter
  end

  def chapters
    @chapters
    puts "This book has #{@chapters}"
  end
end
