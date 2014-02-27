class Dictionary
  attr_accessor :entries

  def initialize
    @entries = {}
  end

  def keywords
    entries.keys.sort
  end

  def add(new_entry)
    if new_entry.is_a? String
      entries[new_entry] = nil
    else 
      new_entry.each_pair { |key, val| entries[key] = val}
    end
  end

  def include?(keyword)
    entries.keys.include? keyword
  end

  def find(keyword)
    entries.select {|key, val| key.start_with? keyword}
  end

  def printable
    definitions = keywords.map do |key|
      "[#{key}] \"#{entries[key]}\""
    end
    definitions.join("\n")
    #practicing inject method
    #keywords.inject("") {|full, current| full + %Q([#{current}] "#{entries[current]}"\n)}.chomp
  end
end