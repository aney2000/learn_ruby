def echo(text)
  text
end

def shout(text)
  text.upcase
end

def repeat(text, numar = 2)
  ([text] * numar).join(" ")
end

def start_of_word(text, numar=1)
  text[0, numar]
end

def first_word(text)
  text.split.first
end

def titleize(text)
  cuvinte_mici = ["and", "over", "the"]
  
  text.split.map.with_index do |cuvant, index|
    (index == 0 || !cuvinte_mici.include?(cuvant)) ? cuvant.capitalize : cuvant
  end.join(" ")
end