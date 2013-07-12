class RPNCalculator
  
  def initialize
    @expression = []
    @value = 0
    @temp = 0
    @temp2 = 0
  end
  
  def push(element)
    @expression << element
  end
  
  def value
    @value
  end
  
  def plus
    if @expression.count < 2
      raise "calculator is empty"
    else
      @temp = @expression.pop + @expression.pop
      @expression << @temp
      @value = @temp
    end
  end
  
  def minus
    if @expression.count < 2
      raise "calculator is empty"
    else
      @temp = @expression.pop - @expression.pop
      @expression << @temp * -1
      @value = @temp * -1
    end
  end
  
  def divide
    if @expression.count < 2
      raise "calculator is empty"
    else
      @temp2 = @expression.pop.to_f
      @temp = @expression.pop.to_f / @temp2
      @expression << @temp
      @value = @temp
    end
  end
  
  def times
    if @expression.count < 2
      raise "calculator is empty"
    else
      @temp = @expression.pop.to_f * @expression.pop.to_f
      @expression << @temp
      @value = @temp
    end
  end
  
  def tokens(our_string)
    array = our_string.split
    operators = ["*", "+", "-", "/"]
    array.map! do |x|
      if operators.include?(x)
        x.to_sym
      else
        x.to_i
      end
    end
    array
  end
  
  def evaluate(our_string)
    array = tokens(our_string)

    array.each do |x|
      if x == :*
        times
      elsif x == :+
        plus
      elsif x == :-
        minus
      elsif x == :/
        divide
      else
        push(x)
      end
    end
    value

  end
  
end
