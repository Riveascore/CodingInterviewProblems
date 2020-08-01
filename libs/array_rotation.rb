# Complete the body of the function shown below
# The input of the rotate function accepts two arguments:
#   a: A array with integers of size between 1 and 10,000
#   k: a constant between 0 and 2^31
#
# The function should rotate the contents of the array to the right k times
# and return the rotated result
#
# Examples:
# a = [1,2,3,4,5], k = 1, result = [5,1,2,3,4]
# a = [1,2,3,4,5], k = 0, result = [1,2,3,4,5]
# a = [1,2,3,4,5], k = 3, result = [3,4,5,1,2]
# a = [1,2,3,4,5], k = 5, result = [1,2,3,4,5]
# a = [1,2,3,4,5], k = 6, result = [5,1,2,3,4]
#
# Restriction runtime: O(n), memory: O(n) where n is the size of the array

class ArrayRotation

  def rotate(a, k)
    array_size = a.size
    array = Array.new(array_size, nil)

    a.each_with_index do |val, index|
      new_index = (index + k) % array_size
      array[new_index] = val
    end

    array
  end
  
  # @param {Array} a
  # @param {Integer} k
  # @return {Array}
  def rotate_2nd(a, k)
    # []
    array = a.clone
    remainder = k / array.size

    case k / array.size
    when 0
    when 1
      k = 0
    else
      k = k % array.size
    end
    

    rotate_helper(a, k)
  end

  def rotate_helper(a, k)
    first_k_elements = a[0..(k - 1)]
    # beginning_of_last = -1 * (k - 1)
    # beginning_of_last = -1 * (k + 1)
    # beginning_of_last = -k
    beginning_of_last = -1 * (a.size - k)
    last_k_elements = a[beginning_of_last..-1]

    last_k_elements.concat(first_k_elements)
  end
  
  
  # @param {Array} a
  # @param {Integer} k
  # @return {Array}
  def slow_rotate(a, k)
    # []


    # say rotate 2, k = 2
    # new_array = Array(a.size, nil)
    # take 0..(k-1)
    # first_k_elements = a[0..(k-1)]
    # last_k_elements = a[(-(k - 1)), -1]

    # first_k_elements.concat(last_k_elements)


    # first_k_elements = a[0..(k - 1)]
    # # beginning_of_last = -1 * (k - 1)
    # beginning_of_last = -1 * (k + 1)
    # last_k_elements = a[beginning_of_last..-1]

    # last_k_elements.concat(first_k_elements)

    
    array = a.clone
    k.times do |time|
      array.unshift(array.pop)
    end

    a
  end
end