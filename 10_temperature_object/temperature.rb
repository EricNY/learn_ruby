class Temperature
  def initialize(opts={})
    @f = opts[:f]
    @c = opts[:c]
  end
  
  def in_fahrenheit
    if @f
      @f
    else
      ctof(@c)
    end
  end
  
  def in_celsius
    if @c
      @c
    else
      ftoc(@f)
    end
  end
  
  def self.from_fahrenheit(temp)
    Temperature.new(:f => temp)
  end

  def self.from_celsius(temp)
    Temperature.new(:c => temp)
  end
  
end

class Celsius < Temperature
  def initialize(c)
    @c = c
  end
end

class Fahrenheit < Temperature
  def initialize(f)
    @f = f
  end
end

def ftoc(temp)
  (temp - 32) * 5/9
end
  
def ctof(temp)
  1.8 * temp + 32
end
