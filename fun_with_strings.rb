module FunWithStrings
  def palindrome?
    word = self.downcase[/\w*/]
    word == word.reverse    
  end
  def count_words
    text = self.split
    count_table = Hash.new(0)
    text.each do |word|
      key = word.downcase[/\w*/]
      if key != ""
        count_table[key] += 1
      end
    end
    count_table
  end
  def anagram_groups
    text = self.split
    anagram_table = Hash.new {|hash, key| hash[key] = []}
    text.each do |word|
      key = word.downcase.chars.to_a.sort.join
      anagram_table[key] << word
    end 
    group_set = Array.new
    anagram_table.each_pair do |key, value|
      group_set << value
    end
    group_set
  end
end

class String
  include FunWithStrings
=begin
  def palindrome?
    self.palindrome?
  end
  def count_words
    self.count_words
  end
  def anagram_group
    self.anagram_group
  end
=end
end
