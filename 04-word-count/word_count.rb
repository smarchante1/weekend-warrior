def words(phrase)
    split_phrase = phrase.strip.split(/\s{1,}/)
    word_count = {}
    
    split_phrase.each do |word|
      word_count[word] = split_phrase.count(word)
    end
      return word_count
end

