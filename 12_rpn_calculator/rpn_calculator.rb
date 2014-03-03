class RPNCalculator
  attr_reader :numbers

  def initialize
    @numbers = []
  end

  def push(val)
    numbers << val
  end

  def value
    # @total = @value
    # reset_subtotal if numbers_empty?
    numbers.last
  end

  def reset_subtotal
    @value = nil
  end

  def numbers_empty?
    @numbers.size == 0
  end

  def raise_exception
    raise "calculator is empty"
  end

  def plus
    raise_exception if numbers_empty?

    num_1 = numbers.pop
    num_2 = numbers.pop
    numbers << num_1 + num_2
  end

  def minus
    raise_exception if numbers_empty?

    num_1 = numbers.pop
    num_2 = numbers.pop    
    numbers << num_2 - num_1
  end

  def times
    raise_exception if numbers_empty?

    num_1 = numbers.pop
    num_2 = numbers.pop   
    numbers << num_2.to_f * num_1.to_f
  end

  def divide
    raise_exception if numbers_empty?

    num_1 = numbers.pop
    num_2 = numbers.pop   
    numbers << num_2.to_f / num_1.to_f
  end

  def tokens(string)
    arr = string.split
    arr.map do |char|
      if /\d/ === char
        char.to_i
      else
        char.to_sym
      end
    end
  end

  def evaluate(string)
    items = tokens(string)
    items.each do |item|
      if item.is_a? Integer
        push(item)
      else
        case item
        when :+ then plus
        when :- then minus
        when :* then times
        when :/ then divide
        end
      end
    end
    value
  end

end




