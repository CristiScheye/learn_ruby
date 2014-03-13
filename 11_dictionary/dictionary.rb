class Dictionary
  attr_reader :entries

  def initialize
    @entries = {}
  end

  def add(new_word)
    if new_word.is_a? String
      @entries[new_word] = nil
    else
      @entries[new_word.keys.first] = new_word.values.first
    end
  end

  def keywords
    @entries.keys.sort
  end

  def include?(word)
    @entries.has_key? word
  end

  def find(word)
    @entries.select {|key, val| key.include? word }
  end

  def printable
    outputs = keywords.map do |key|
      "[#{key}] \"#{entries[key]}\""
    end
    outputs.join("\n")
  end
end