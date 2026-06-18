def translate(text)
  ay = "ay"
  
  text.split.map do |word|
    punctuation = word.match(/(\p{Punct}+)\z/) ? $1 : ""
    clean_word = word.sub(/\p{Punct}+\z/, "")
    
    is_capitalized = (clean_word =~ /\A[A-Z]/)
    clean_word = clean_word.downcase

    if clean_word[0] =~ /[aeiou]/
      result_word = clean_word + ay
    else
      while clean_word[0] =~ /[^aeiou]/
        if clean_word[0..1] == "qu"
          clean_word = clean_word[2..-1] + "qu"
        else
          clean_word = clean_word[1..-1] + clean_word[0]
        end
      end
      result_word = clean_word + ay
    end

    result_word = result_word.capitalize if is_capitalized
    result_word + punctuation
  end.join(" ")
end