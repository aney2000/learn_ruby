def reverser
  text = yield
  text.split.map { |word| word.reverse }.join(" ")
end

def adder(numar = 1)
  yield + numar
end

def repeater(how_many_times = 1)
  how_many_times.times do
    yield
  end
end