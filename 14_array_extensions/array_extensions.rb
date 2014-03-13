class Array

  def sum
    self.inject(0) { |total, val| total += val }
  end

  def square
    self.map { |e| e**2 }
  end

  def square!
    self.map! { |e| e**2 }
  end
end
