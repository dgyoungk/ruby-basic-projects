# caesar-cipher/c_cipher.rb

# Implement a caesar cipher that takes in a string and the shift factor and then outputs the modified string
# Take a string, split it up to ind. char, modify it to a number to perform arithmetics
# take the shift key value, and add it to the char, convert back to char, join it back together and return it
# gotchas: a-z looping (solve with conditionals [value checking])

class CaesarCipher

  def convert_to_nums(string)
    return string.split('').map { |ch| ch = ch.ord }
  end

  def convert_to_code(nums)
    return nums.map { |num| num.chr }.join('')
  end

  def cipherize(string, shift = 5)
    # get ind. chars, convert them into ASCII values and shift them
    modified_nums = convert_to_nums(string)
    modified_nums.map! do |num|
      unless num < 'A'.ord
        if num.between?('A'.ord, 'Z'.ord)
          num = num + shift > 'Z'.ord ? num + (shift - 26) : num + shift
        elsif num.between?('a'.ord, 'z'.ord)
          num = num + shift > 'z'.ord ? num + (shift - 26) : num + shift
        end
      else
        num
      end
    end
    convert_to_code(modified_nums)
  end
end
