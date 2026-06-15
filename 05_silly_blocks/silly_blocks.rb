def reverser
  text = yield
  text.split.map { |cuvant| cuvant.reverse }.join(" ")
end

def adder(numar = 1)
  yield + numar
end

def repeater(de_cate_ori = 1)
  de_cate_ori.times do
    yield
  end
end