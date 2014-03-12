def echo(phrase)
  phrase
end

def shout(phrase)
  phrase.upcase
end

def repeat(phrase, rep=2)
  phrase_reps = Array.new(rep, phrase)
  phrase_reps.join(' ')
end

def start_of_word(word, num_letters)
  word[0..(num_letters-1)]
end

def first_word(phrase)
  words = phrase.split(' ')
  words.first
end

def titleize(phrase)
  words = phrase.split(' ')

  proper_words = words.map.with_index do |word, index|
    if index == 0
      word[0].upcase + word[1..-1]
    elsif ['the', 'and', 'an', 'by', 'over'].include? word
      word
    else
      word[0].upcase + word[1..-1]
    end
  end

  proper_words.join(' ')
end
