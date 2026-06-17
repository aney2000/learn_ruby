def translate(text)
  vowels = ["a", "e", "i", "o", "u"]
  ay = "ay"
  
  words = text.split
  words_translated = []
  
  words.each do |word|
    if vowels.include?(word[0])
      words_translated << word + ay
    else
      while !vowels.include?(word[0])
        
        if word[0..1] == "qu"
          word = word[2..-1] + "qu"
        else
          word = word[1..-1] + word[0]
        end
        
      end
      words_translated << word + ay
    end
  end
  words_translated.join(" ")
end