class Temperature
  def initialize(options = {})
    @options = options
  end

  def in_celsius
    if @options.key?(:c)
      @options[:c]
    elsif @options.key?(:f)
      Temperature.ftoc(@options[:f])
    end
  end

  def in_fahrenheit
    if @options.key?(:f)
      @options[:f]
    elsif @options.key?(:c)
      Temperature.ctof(@options[:c])
    end
  end

  def self.from_celsius(degrees)
    new(:c => degrees)
  end

  def self.from_fahrenheit(degrees)
    new(:f => degrees)
  end

  def self.ftoc(fahrenheit)
    (fahrenheit - 32.0) * (5.0 / 9.0)
  end

  def self.ctof(celsius)
    (celsius * (9.0 / 5.0)) + 32.0
  end
end

class Celsius < Temperature
  def initialize(degrees)
    super(:c => degrees)
  end
end

class Fahrenheit < Temperature
  def initialize(degrees)
    super(:f => degrees)
  end
end