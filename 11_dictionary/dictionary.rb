class Dictionary

  def initialize
    @definitions = {}
  end
  
  def entries
    @definitions
  end
  
  def add(input)
    if input.class == Hash
      input.each do |key, val| @definitions[key] = val
      end
    else
      @definitions[input] = nil
    end
  end
  
  def keywords
    @definitions.keys.sort
  end
  
  def include?(word)
    @definitions.has_key?(word)
  end

  def find(substring)
    h = {}
    @definitions.each do |key,value|
      if key.include?(substring)
        h[key] = value
      end
    end
    return h
  end

  def printable
    array = []
    @definitions.each do |key, value|
      array << "[#{key}] \"#{value}\""
    end
    array.sort.join("\n")
  end

end
