def measure(num_repeats = 1)
  run_time = 0
  num_repeats.times do 
    start = Time.now
    yield 
    stop = Time.now
    run_time += stop - start
  end

  run_time / num_repeats.to_f
end