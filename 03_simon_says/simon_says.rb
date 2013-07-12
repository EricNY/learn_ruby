def echo(word)
  word
end

def shout(word)
  word.upcase
end

def repeat(word, i = 2)
  Array.new(i, word).join(" ")
end

def start_of_word(word, i = 1)
  word[0..i-1]
end

def first_word(sentence)
  array = sentence.split
  array[0]
end

def capitalize_all(array)
  little_words = ["a", "the", "or", "in", "and", "over", "of"]
  array.map! do |i|
    if little_words.include?(i)
      i.downcase
    else
      i.capitalize
    end
  end
  array[0].capitalize!
  array
end

def titleize(sentence)
  array = sentence.split
  capitalize_all(array).join(" ")
end
