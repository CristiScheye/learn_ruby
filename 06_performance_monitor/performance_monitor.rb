def measure(rep_count = 1)
  total_time = 0

  rep_count.times do
    start = Time.now
    yield 
    stop = Time.now

    total_time += stop - start
  end

  total_time / rep_count  
end