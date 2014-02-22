def add(a,b)
  a + b
end

def subtract(a,b)
  a - b
end

def sum(numbers)
  total = 0

  numbers.each { |val| total += val}

  total
end

def multiply(numbers)
  product = 1

  numbers.each { |val| product *= val}

  product
end

def power(base, exp)
  base ** exp
end

def factorial(a)
  if a == 0 || a == 1
    1
  else
    a * factorial(a-1)
  end
end