def add(*args)
  args.inject(0) {|total, num| total += num }
end

def subtract(*args)
  args[1..-1].inject(args[0]) {|total, num| total -= num}
end

def sum(arrr)
  arrr.inject(0) {|total, num| total += num }
end

def multiply(*args)
  args.inject(1) {|total, num| total *= num }
end

def power(base, exp)
  base ** exp
end

def factorial(num)
  if num <= 1
    return 1
  else
    result = num * factorial(num-1)
  end
  return result
end