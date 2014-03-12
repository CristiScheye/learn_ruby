def translate(phrase)
  words = phrase.split(' ')

  pig_words = words.map do |word|

    first_vowel = /[aeiouAEIOU]/ =~ word
    first_qu = /qu/ =~ word

    if !!first_qu && first_qu < first_vowel
      first_vowel = first_qu + 2 
    end

    if first_vowel == 0
      word + 'ay'
    else
      word[first_vowel..-1] + word[0...first_vowel] + 'ay'
    end
  end

  pig_words.join(' ')
end



