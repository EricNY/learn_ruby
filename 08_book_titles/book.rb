class Book

  def title
    art_conj_preps = ["a", "an", "the", "in", "of", "or", "and", "if", "by", "is"]
    array = @title.split
    array.map! do |word|
      if art_conj_preps.include?(word)
        "#{word.downcase}"
      else
        "#{word.capitalize}"
      end
    end
    array[0].capitalize!
    array.join(" ")
  end
  
  def title=(our_title)
    @title = our_title
  end
  
end
