class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    hour = padded( seconds / 3600 )
    min = padded( (seconds % 3600) / 60 )
    sec = padded( seconds % 60 )

    [hour, min, sec].join(':')
  end

  def padded(number)
    number.to_s.rjust(2,'0')
  end
end