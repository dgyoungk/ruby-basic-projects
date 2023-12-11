# return a hash of substring counts that occurred in a given string
# use a 'dictionary' (array) to match against the string

# matching should be case-insensitive

dictionary = [ "below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit" ]

def substr_counts(string, dictionary) 
  multi_words = string.downcase.split(' ')

  reduced_result = dictionary.reduce(Hash.new(0)) do |result, word|
    multi_words.each do |to_match|
      # regex pattern matching using each word in the dictionary
      if to_match.match(/#{word}/)
        result[word] += 1
      end
    end
    result
  end
end

p substr_counts(%(Howdy partner, sit down! How's it going?), dictionary)