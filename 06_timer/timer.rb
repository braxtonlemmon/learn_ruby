class Timer
  attr_accessor :hours, :minutes, :seconds

  def seconds (seconds=0)
    @seconds = seconds
  end

  def time_string
    @hours = @seconds / 3600
    @minutes = @seconds % 3600 / 60
    @seconds = @seconds % 3600 % 60
    "#{padded(@hours)}:#{padded(@minutes)}:#{padded(@seconds)}"
  end

  def padded(number)
    "%02d" % number
  end

end
