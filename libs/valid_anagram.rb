# Complete the body of the function shown below
# The input of the function accepts two arguments
#   s: A string of length 0 or more characters
#   t: A string of length 0 or more characters
#
# The function should return true iff the strings are anagrams of each other
# Characters are case sensitive.
# Assume that the string is not UTF.
#
# Examples:
# s = "binary", t = "brainy" result = true
# s = "rat", t = "car" result = false
# s = "BAT", t = "tab" result = false (different case)
# s = "rail safety", t = "fairy tales" result = true
# s = "the eyes", t = "they see" result = true
# s = "debit card", t = "bad credit" result = true
# s = "action man", t = "cannot aim" result = true
# s = "", t = "" result = true
# s = "batt", t = "tab" result = false


class ValidAnagram

  # ASCII_COUNTS = (?!...?~).reduce(:+).chars.map { |x| [x.ord, 0] }.to_h
  
  # attr_accessor :s_ord_count, :t_ord_count
  
  # @param {String} s
  # @param {String} t
  # @return {Boolean}
  # def set_up_ascii_characters
  #   table = Array.new(256, 0)
  # end


  def is_anagram(s, t)
    table = Array.new(256, 0)

    s.each_char do |character|
      table[character.ord] += 1
    end

    t.each_char do |character|
      table[character.ord] -= 1
      return false if table[character.ord] < 0
    end

    t.length == s.length
  end
  
  
  # def is_anagram_2nd(s, t)
  #   table = Array.new(256, 0)

  #   ord_count(s, table) == ord_count(t, table)
  # end
  
  
  # def is_anagram_old(s, t)
  #   # s_chars = s.chars.reject { |x| x == " " }
  #   # t_chars = t.chars.reject { |x| x == " " }
    
  #   # s_chars.sort == t_chars.sort

  #   @s_ord_count = old_ord_count(s)
  #   @t_ord_count = old_ord_count(t)

  #   @s_ord_count == @t_ord_count
  # end

  # private

  # def ord_count(string, table)
  #   table = table.clone
  #   array_ords = string.each_char.each do |character|
  #     table[character.ord] += 1
  #   end

  #   table
  # end
  
  # def old_ord_count(string)
  #   array = string.chars
  #   array_ascii_counts = ASCII_COUNTS.clone
  #   array_ords = array.map(&:ord)
  #   array_ords.each do |ord_val|
  #     array_ascii_counts[ord_val] += 1
  #   end

  #   array_ascii_counts
  # end
end