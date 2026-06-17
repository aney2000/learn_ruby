def echo(text)
  text
end

def shout(text)
  text.upcase
end

def repeat(text, num = 2)
  ([text] * num).join(" ")
end

def start_of_word(text, num=1)
  text[0, num]
end

def first_word(text)
  text.split.first
end

def titleize(text)
  small_words = ["and", "over", "the"]
  
  text.split.map.with_index do |word, index|
    (index == 0 || !small_words.include?(word)) ? word.capitalize : word
  end.join(" ")
end