class Temperature
  def initialize(temp_hash)
    @celsius = temp_hash[:c]
    @fahrenheit = temp_hash[:f]
  end

  def in_fahrenheit
    ctof if @fahrenheit.nil?
    @fahrenheit
  end

  def in_celsius
    ftoc if @celsius.nil?
    @celsius
  end

  def self.from_fahrenheit(temp)
    Temperature.new(:f => temp)
  end

  def self.from_celsius(temp)
    Temperature.new(:c => temp)
  end

  def ftoc
    @celsius = (@fahrenheit - 32.0) * 5.0 / 9.0
  end

  def ctof
    @fahrenheit = @celsius * 9.0 / 5.0 + 32.0
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

