def measure(how_many = 1)
  total = 0
  
  how_many.times do
    start_time = Time.now
    yield
    end_time = Time.now
    total += (end_time - start_time)
  end
  
  total / how_many
end