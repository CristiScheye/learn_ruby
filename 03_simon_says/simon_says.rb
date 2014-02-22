def echo(str)
  str
end

def shout(str)
  str.upcase
end

def repeat(str, rep = 1)

  if rep == 1
    return str + " #{str}"
  else
    full = str
    (rep - 1).times {full += " #{str}"}
    full
  end
end

def start_of_word(word, num_letters)
  word[0..(num_letters-1)]
end

def first_word(phrase)
  words = phrase.split
  words[0]
end

def capitalize(word)
  word[0].upcase + word[1..-1]
end

def titleize(phrase)
  words_not_to_capitalize = ['and', 'or', 'the', 'over', 'in', 'of']
  words = phrase.split

  first_word_in_phrase = true
  titleized_words = words.map do |word|
    if first_word_in_phrase
      first_word_in_phrase = false
      capitalize(word)
    elsif words_not_to_capitalize.include?(word)
      word
    else
      capitalize(word)
    end
  end

  titleized_words.join(' ')
end