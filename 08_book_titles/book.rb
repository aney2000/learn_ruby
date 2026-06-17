class Book
  attr_writer :title

  def initialize(title = "")
    @title = title
  end

  def title
    small_words = ["and", "or", "over", "the", "a", "an", "in", "of"]
    words = @title.split(" ")
    formated_words = words.map.with_index do |word, index|
      if index == 0
        word.capitalize
      elsif small_words.include?(word)
        word.downcase
      else
        word.capitalize
      end
    end
    formated_words.join(" ")
  end
end