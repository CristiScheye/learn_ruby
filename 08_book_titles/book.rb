class Book


  def initialize
  end

  def title=(title)
    words = title.split

    first_word = true
    proper_case = words.map do |word|
      if first_word
        first_word = false
        word[0].upcase + word[1..-1]
      elsif exception?(word) 
        word
      else
        word[0].upcase + word[1..-1]
      end

    end

    @title = proper_case.join(' ')
  end

  def title
    @title
  end

  def exception?(word)
    ['the','a','an','and','or', 'in','of','around','out'].include? word
  end


end