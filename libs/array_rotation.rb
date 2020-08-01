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

  # @param {Array} a
  # @param {Integer} k
  # @return {Array}
  def rotate(a, k)
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

    k.times do |time|
      a.unshift(a.pop)
    end

    a
  end
end