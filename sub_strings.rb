dictonary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(user_words, dictonary)

user_array = user_words.downcase.split(/\W+/)

found_words_hash = {}

user_array.each do |user_array|
  dictonary.each do |word|
    if user_array.include?(word)
      if found_words_hash.key?(word)
        found_words_hash[word] += 1
      else
        found_words_hash[word] = 1
      end
    end
  end
end

puts found_words_hash

end

substrings("Howdy partner, sit down! How's it going?", dictonary)