# Implement a caesar cipher that takes in a string and the shift factor and then outputs the modified string

# Take a string, split it up to ind. char, modify it to a number to perform arithmetics
# take the shift key value, and add it to the char, convert back to char, join it back together and return it

# gotchas: a-z looping (solve with conditionals [value checking])

def cipherize(string, shift)
  # get ind. chars, convert them into ASCII values and shift them
  modified_nums = string.split('').map do |ch|
    num = ch.ord
    # testing for non-alpha ASCII values
    if num < 'A'.ord
      num
    # testing for uppercase letters
    elsif num.between?('A'.ord, 'Z'.ord)
      if num + shift > 'Z'.ord
        num = num + (shift - 26)
      else
        num += shift
      end
    # testing for lowercase letters
    elsif num.between?('a'.ord, 'z'.ord)
      if num + shift > 'z'.ord
        num = num + (shift - 26)
      else
        num += shift
      end
    end
  end

  modified_str = modified_nums.map { |num| num.chr }.join('')
end

# method testing
p cipherize(%(Testing with spaces and punctuation!), 10)