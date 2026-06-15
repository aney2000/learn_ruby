class Book
  attr_accessor :author
  attr_writer :title

  def initialize(title = "")
    @title = title
  end

  def title
    cuvinte_mici = ["and", "or", "over", "the", "a", "an", "in", "of"]
    cuvinte = @title.split(" ")
    cuvinte_formatate = cuvinte.map.with_index do |cuvant, index|
      if index == 0
        cuvant.capitalize
      elsif cuvinte_mici.include?(cuvant)
        cuvant.downcase
      else
        cuvant.capitalize
      end
    end
    cuvinte_formatate.join(" ")
  end
end