class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    hours = seconds / 3600
    minutes = (seconds % 3600) / 60
    secs = seconds % 60

    [padded(hours), padded(minutes), padded(secs)].join(':')
  end

  def padded(num)
    if num < 10
      '0' + num.to_s
    else
      num.to_s
    end
  end
end