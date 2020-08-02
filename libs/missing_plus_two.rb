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
    binary_search(a, a.size / 2)
  end

  def binary_search(list, n)
    low = 0
    high = list.size

    loop do 
      mid = (low + high) / 2

      return n if list[mid] == n
      return false if list[mid] == nil
      return false if (high - low).abs == 1

      if list[mid] > n
        high = mid
      else
        low = mid
      end
    end
  end

  def number_is_not_plus_two()
    
  end
  
  
  
  # @param {Array} a
  # @return {Integer}
  def find_missing_number_old(a)
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
    index = a.size / 2
    return is_correct_value?(a, index)
  end

  def is_correct_value?(a, index)
    num = a[index]
    return nil if index > a.size - 1

    return_value = nil
    correct_answer = index * 2
    
    if correct_answer != num
      return correct_answer
    else
      left_array = a[0..index - 1]
      left_index = left_array.size / 2

      right_array = a[0..index - 1]
      right_index = right_array.size / 2

      left_value = is_correct_value?(left_array, left_index)
      if left_value == nil
        right_value = is_correct_value?(right_array, right_index)
        return_value = right_value
      end
      return_value = left_value
    end

    return return_value
  end
  
end