=begin
 ITCS 3155 Software Engineering
 HW0 - Part 3
 January 26th 2015
 Kazushi Kawamura
=end

class BookInStock
  attr_accessor :isbn, :price
  def initialize(isbn, price)
    @isbn = isbn
    @price = price
    
    # raise an Arugument Error if isbn is an empty string or the price
    # is less or equal or zero
    raise ArgumentError if isbn == "" || price <= 0
  end

  # return price as a string with $2.00 format
  def price_as_string
    return "$" + '%.2f' % @price
  end
end


