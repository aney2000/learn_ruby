def add(a,b)
  a+b
end

def subtract(a,b)
  a-b
end

def sum(array)
  total = 0
  
  array.each do |numar|
    total = total + numar
  end
  
  total
end

def multiply(*array)
  numere = array.flatten
  total = 1
  numere.each do |numar|
    total = total * numar
  end
  total
end

def power(baza, exponent)
  baza ** exponent
end

def factorial(a)
  return 1 if a == 0
  
  rezultat = 1
  
  (1..a).each do |numar|
    rezultat = rezultat * numar
  end
  
  rezultat
end