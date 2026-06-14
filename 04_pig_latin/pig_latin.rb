def translate(text)
  vocale = ["a", "e", "i", "o", "u"]
  ay = "ay"
  
  cuvinte = text.split
  cuvinte_traduse = []
  
  cuvinte.each do |cuvant|
    if vocale.include?(cuvant[0])
      cuvinte_traduse << cuvant + ay
    else
      while !vocale.include?(cuvant[0])
        
        if cuvant[0..1] == "qu"
          cuvant = cuvant[2..-1] + "qu"
        else
          cuvant = cuvant[1..-1] + cuvant[0]
        end
        
      end
      cuvinte_traduse << cuvant + ay
    end
  end
  cuvinte_traduse.join(" ")
end