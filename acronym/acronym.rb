class Acronym
  def self.abbreviate(sequence)
    raise "Expecting a string for parameter `sequence`: {sequence.inspect}" unless sequence.kind_of?(String)
    funcWords = [ "and", "or", "of", "to", "a", "an" ]  # an incomplete list of function words
    sequence.split(/[^a-zA-Z'0-9]+/).map{ |e| e.chr.upcase unless funcWords.include?(e) }.join()
  end
end
