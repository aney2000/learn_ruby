def measure(de_cate_ori = 1)
  timp_total = 0
  
  de_cate_ori.times do
    start_time = Time.now
    yield
    end_time = Time.now
    timp_total += (end_time - start_time)
  end
  
  timp_total / de_cate_ori
end