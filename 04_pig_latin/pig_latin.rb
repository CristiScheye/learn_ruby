require 'pry'

def translate(phrase)
  words = phrase.split
  words.map! {|word| translate_word(word)}
  words.join(' ')
end


def translate_word(word)
  num_const = count_consonants(word)
  if num_const == 0
    word + 'ay'
  else
    word[num_const..-1] + word[0..(num_const-1)] + 'ay'
  end
end


def count_consonants(word)
  if word[0..2] == 'squ'
    return 3
  elsif word[0..1] == 'qu'
    return 2
  else
    count = 0
  end

  word.each_char do |char|
    if /[aeiou]/ === char.downcase
      break
    else
      count += 1
    end
  end

  count
end
