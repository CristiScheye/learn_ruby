class Temperature

  def initialize(temp)
    @fahrenheit = temp[:f]
    @celsius = temp[:c]
  end

  def in_celsius
    @celsius ||= ftoc 
  end

  def in_fahrenheit
    @fahrenheit ||= ctof
  end

  # Factory Methods
  def self.from_fahrenheit(temp)
    Temperature.new(f: temp)
  end

  def self.from_celsius(temp)
    Temperature.new(c: temp)
  end

  def ftoc
    (@fahrenheit - 32.0) * 5.0 / 9.0
  end

  def ctof
    (@celsius * 9.0 / 5.0) + 32.0
  end
end

class Celsius < Temperature
  def initialize(temp)
    @celsius = temp
  end
end

class Fahrenheit < Temperature
  def initialize(temp)
    @fahrenheit = temp
  end
end