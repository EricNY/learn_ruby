def add(x,y)
  x + y
end

def subtract(x,y)
  x - y
end

def sum(array)
  total = 0
  array.each do |i|
    total = total + i
  end
  total
end

def multiply(*x)
  total = 1
  x.each do |element|
    total = total * element
  end
  total
end

def power(x, y)
  x**y
end

def factorial(x)
  if x <= 0
    1
  else
    x * factorial(x-1)
  end
end
