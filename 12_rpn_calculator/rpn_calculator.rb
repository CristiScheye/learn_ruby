class RPNCalculator

  def initialize
    @numbers = []
  end

  def push(value)
    @numbers << value
  end

  def value
    @numbers.last
  end


  def plus
    unless calculator_empty?
      @numbers << (@numbers.pop + @numbers.pop)
    end
  end

  def minus
    unless calculator_empty?
      @numbers << (-@numbers.pop + @numbers.pop) #subtract left from right in array
    end
  end

  def divide
    unless calculator_empty?
      @numbers << (1 / @numbers.pop.to_f * @numbers.pop.to_f) #divide left  by right in array
    end
  end

  def times
    unless calculator_empty?
      @numbers << (@numbers.pop * @numbers.pop)
    end
  end

  def calculator_empty?
    raise 'calculator is empty' if @numbers.size == 0
  end

  def tokens(string)
    chars = string.split(' ')
    chars.map! do |char|
      if /\d/ === char 
        char.to_i
      else
        char.to_sym
      end
    end
  end

  def evaluate(string)
    tokens(string).each do |token|
      if token.is_a? Integer
        push(token)
      else
        case token
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
