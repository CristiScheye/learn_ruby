def reverser
  words = yield.split
  reversed = words.map {|word| word.reverse}
  reversed.join(' ')
end


def adder(num_to_add = 1)
  num_to_add + yield
end

def repeater(num_repeat = 1)
  num_repeat.times {yield}
end