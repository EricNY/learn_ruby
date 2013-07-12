def reverser
  words = yield.split
  words.map! do |word|
     word.reverse
  end
  words.join(" ")
end

def adder(i = 1)
  yield + i
end

def repeater(number = 10)
  number.times {yield}
end
