def translate(text)
  text.gsub(/\b([^aeiou\s]*qu|[^aeiou\s]+)?([aeiou]\w*)/i, '\2\1ay')
end