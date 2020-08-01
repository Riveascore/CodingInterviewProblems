# Complete the body of the function shown below
# The input of the function accepts one argument
#   text: A string of length 2 characters or more containing a
#         combination of only the characters "(", "{", "[", "]", "}", ")"
#
# The function should return true iff the string is properly nested
#
# Examples:
# text = "[()()]", result = true
# text = "[(]()]", result = false
# text = "[{()}]", result = true
# text = "((()))", result = true
# text = "[(])", result = false
# text = "((())", result = false
# text = "()]]", result = false
# text = "()[]{}()[]{}", result = true


class Nesting

  # @param {String} text
  # @return {Boolean}
  def check_if_properly_nested(text)
    open_characters = {
      "(": :")",
      "{": :"}",
      "[": :"]",
    }
    close_characters = open_characters.invert

    open_count = open_characters.keys.map { |x| [x, 0] }.to_h
    close_count = close_characters.keys.map { |x| [x, 0] }.to_h

    open_stack = []

    text_symbols = text.chars.map(&:to_sym)
    text_symbols.each.with_index do |character, index|
      is_close_character = close_characters.has_key?(character)
      is_open_character = open_characters.has_key?(character)

      if is_close_character
        matching_open_character = close_characters[character]
        last_open_character = open_stack.pop
        if last_open_character.nil?
          puts "false 1"
          return false
        end
        begin
          open_count[last_open_character] -= 1
          
        rescue => exception
          puts "open_count: #{open_count}"
          puts "last_open_character: #{last_open_character}"
        end
        if last_open_character != matching_open_character
          puts "false 2"
          return false
        end
      elsif is_open_character
        # if index == text.size - 1
        puts "false 3"
        #   return false
        # end
        open_stack.push(character)
        open_count[character] += 1
      else
        puts "false 4"
        return false
      end
    end

    # pp open_count.values
    return open_count.values.all? { |x| x != 0 }
    begin
      
    rescue => exception
      pp open
    end


=begin
    if closing_character
      last_open_character = open_characters.pop
      return false if last_open_character != closing_characters[last_open_character]
=end
  end
end