def add(a,b)
  a+b
end

def subtract(a,b)
  a-b
end

def sum(array)
  total = 0
  
  array.each do |num|
    total = total + num
  end
  
  total
end

def multiply(*array)
  nums = array.flatten
  total = 1
  nums.each do |num|
    total = total * num
  end
  total
end

def power(base, exponent)
  base ** exponent
end

def factorial(a)
  return 1 if a == 0
  
  result = 1
  
  (1..a).each do |num|
    result = result * num
  end
  
  result
end