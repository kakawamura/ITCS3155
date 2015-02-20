=begin
 ITCS 3155 Software Engineering
 HW0 - Part 2
 January 26th 2015
 Kazushi Kawamura
=end

# return string "Hello, " concatenated with the name
def hello(name)
  return "Hello, " + name.to_s
end

# return true if it starts with a consonants
def starts_with_consonant?(s)
  return /(?=^[^aiueo_\d])(?=\w)/i.match(s) ? true : false 
end

# return true if the string represents a binary number
# and multiple of four
def binary_multiple_of_4?(s)
  return /(^[10]*(00)$)|\b0/.match(s) ? true: false
end


puts binary_multiple_of_4?("0") # -> true
puts binary_multiple_of_4?("100") # -> true
puts binary_multiple_of_4?("10101011100") # -> true
puts binary_multiple_of_4?("101010a11100") # -> false 
puts binary_multiple_of_4?("a10101011100") # -> false 
puts binary_multiple_of_4?("101010111001") # -> falsee
puts binary_multiple_of_4?("10101011100100") # -> true
