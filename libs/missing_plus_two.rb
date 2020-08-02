# Complete the body of the function shown below
# The input of the function accepts one argument
#   a: Array of type integer of size between 2 and 2^31
#      the array contains a sequence starting from 0 and the following progression
#      [0,2,4,6,8,10 ... ]
# The array contains one missing number for example: [0,2,4,6,10,12] is missing 8
# Write a function that returns the missing number.
#
# Examples:
# a = [0,2,4,8,10], result = 6
# a = [0,2,4,6,10], result = 8
# a = [2,4,6], result = 0
#

class MissingPlusTwo

  # @param {Array} a
  # @return {Integer}
  def find_missing_number(a)
    # -100

    # result = a[0]
    # a.each.with_index do |num, i|
    #   correct_answer = result + 2
    #   if num + 2 == correct_answer
    #     result = correct_answer
    #   else
    #     return a[i - 1] + 2
    #   end
    # end

    # return 0

    # result = 0
    # return false if a[0] != 0
    # correct_array = Array.new(a.size, 0)
    # a.each do |num|
    #   correct_answer = result + 2
    #   if num + 2 == correct_answer
    #     return false
    #   end
    # end
    # [0, 2, 4, 6, 8, 10, 12, 14]
    # # say 3
    # i = 3
    # i * 2
    # correct_array = Array.new(a.size, 0).map.with_index do |num, index|
    #   index * 2
    # end
    # (correct_array - a)[0]

    # a.each.with_index do |num, i|
    #   correct_answer = i * 2
    #   if correct_answer != num
    #     return correct_answer
    #   end
    # end
    
  end

  def is_correct_value?(a, index)
    correct_answer = i * 2
    if correct_answer != num
      return is_correct_value?(a, index)
    end
  end
  
end