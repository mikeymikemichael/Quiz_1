# 8. Create a Ruby class called Article inside a module called Blog that has
# two attributes: title and body. Write another class called Snippet that
# inherits from the Article class. The Snippet method should return the same
# `title` but if you call `body` on a snippet object it should return the body
# truncated to a 100 characters with three dots at the end. This means if you
# create a snippet object and give it a body that has 200 characters, if you
# call the `body` method it should return the first 100 characters of that body
# and three dots at the end. If the body is 100 characters or less, it should
# not put three dots at the end. Include the module you built in question #7 in
# the Article class and use it when returning the title.

require "./book.rb"

module Blog
  class Article
    attr_accessor :title; :body;

    def initialize(title, body)
      @title = title
      @body = body
    end

    
  end
end

class Snippet < Article
  attr_accessor :title;

  def body(body)
    @body = body
  end

  def truncate(body)
    truncate("#{@body}", length: 100)
  end
end
