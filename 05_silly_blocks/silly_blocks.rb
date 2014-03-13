def reverser
  string = yield

  words = string.split(' ')
  reversed_words = words.map do |word|
    word.reverse
  end

  reversed_words.join(' ')
end

def adder(val_to_add = 1)
  num = yield
  num + val_to_add
end

def repeater(rep_count = 1)
  rep_count.times { yield }
end
