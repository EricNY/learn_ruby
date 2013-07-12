def translate(sentence)
  words = sentence.split
  vowels = ["a", "e", "i", "o", "u"]
  
  words.map! do |word|
    if word[0..1] == "qu"
      "#{word[2..-1]}#{word[0].chr}#{word[1].chr}ay"
    elsif word[1..2] == "qu"
       "#{word[3..-1]}#{word[0].chr}#{word[1].chr}#{word[2].chr}ay"
    elsif vowels.include?(word[0])
      word + "ay"
    elsif vowels.include?(word[1])
      "#{word[1..-1]}#{word[0].chr}ay"
    elsif vowels.include?(word[2])
      "#{word[2..-1]}#{word[0].chr}#{word[1].chr}ay"
    else vowels.include?(word[3])
      "#{word[3..-1]}#{word[0].chr}#{word[1].chr}#{word[2].chr}ay"
    end
  end
  words.join(" ")
  
end
