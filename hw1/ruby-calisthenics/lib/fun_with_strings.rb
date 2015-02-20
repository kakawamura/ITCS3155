=begin
  Kazushi Kawamura
  Homework 1
  January 30th 2015
=end

module FunWithStrings
  # Part A -- Palindromes
  def palindrome?
    justTheWord = self.gsub(/[^a-z]+/i, "").downcase
    return justTheWord.reverse == justTheWord ? true : false
  end

  # Part B -- Word count
  def count_words
    hash  = Hash.new(0)
    self.gsub(/[,.;:!\-\d]+/i, "").downcase.split.each { |x| hash[x] += 1 }
    return hash
  end

  # Part C -- Anagram
  def anagram_groups
    groups = Hash.new
    words = self.split
    
    words.each do |word|
      groups[word.chars.sort.join] ||= []
      groups[word.chars.sort.join] << word
    end

    return groups.values
  end
  

end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
