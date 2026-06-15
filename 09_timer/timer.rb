class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    ore = @seconds / 3600
    minute = (@seconds % 3600) / 60
    secunde_ramase = @seconds % 60
    
    [ore, minute, secunde_ramase].map { |numar| "%02d" % numar }.join(":")
  end
end