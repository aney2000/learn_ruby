def translate(text)
  ay = "ay"
  
  text.split.map do |word|
    if word[0] =~ /[aeiou]/i
      word + ay
    else
      while word[0] =~ /[^aeiou]/i
        if word[0..1] == "qu"
          word = word[2..-1] + "qu"
        else
          word = word[1..-1] + word[0]
        end
      end
      word + ay
    end
  end.join(" ")
end