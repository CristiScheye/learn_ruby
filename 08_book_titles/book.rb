class Book
  attr_writer :title

  def initialize; end

  def title
    words = @title.split(' ')

    proper_case_words = words.map.with_index do |word, index|
      if should_not_capitalize?(word) && index != 0
        word
      else
        capitalize(word)
      end
    end

    proper_case_words.join(' ')
  end

  def should_not_capitalize?(word)
    articles = ['the', 'a', 'an']
    conjunctions = ['and', 'or']
    prepositions = ['in', 'of', 'around']

    words_not_capitalized = articles + conjunctions + prepositions

    words_not_capitalized.include? word
  end

  def capitalize(word)
    word[0].upcase +  word[1..-1]
  end
end