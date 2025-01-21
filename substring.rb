def substrings(text, dictionary)
  word_occurences_hash = {}
  dictionary.each do |word|
    word_occurences = text.scan(word).length
    if word_occurences > 0
      word_occurences_hash[word] = word_occurences
    end
  end

  word_occurences_hash
end

dictionary = ["cat", "dog", "mouse"]
p substrings(gets.chomp, dictionary)