class Book

  def initialize(title, price)
    @title = title; @price = price
  end

  private

  attr_reader :title, :price
end

book = Book.new("Programming Ruby", 1980)
puts book.title
puts book.price
# => private_attr.rb:13:in
# `<main>': private method `title' called for #<Book:0x007f9d8fa4b0a8 @title="Programming Ruby", @price=1980> (NoMethodError)
