def measure(x=1)

  if x > 0
    total = 0
    x.times do     
      beginning = Time.now
      yield 
      ending = Time.now - beginning 
      total += ending
    end
    total/x
  else
    0
  end
  
end
