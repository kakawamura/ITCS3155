=begin
 ITCS 3155 Software Engineering
 HW0 - Part 1
 January 26th 2015
 Kazushi Kawamura
=end

# @param: array of numbers
# @return: sum of its elements
def sum(numArray)
  sum = 0
  numArray.each { |x| sum += x }
  return sum
end

def sum2(numArray)
  sum = 0
  numArray.each { |x| sum += x }
  return sum 
end

# @param: array of numbers
# @return: sum of the two largest elements
def max_2_sum(numArray)
  return 0 if numArray.empty?
  return numArray[0] if numArray.length == 1
  numArray.sort!.reverse!
  return numArray[0] + numArray[1]
end

# @param: array of numbers, number
# @return: 
def sum_to_n?(numArray, n)
  return false if numArray.empty? || numArray.length == 1

  # assign all the combination as a two dimensional array
  twoNum = numArray.combination(2).to_a
  twoNum.each { |x| return true if x[0] + x[1] == n }

  return false
end

# puts sum_to_n?([-1,-2,3,4,6,-8], 7)
puts sum2([1,2,3]);
