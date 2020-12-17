class Acronym
  def self.abbreviate(sequence)
    raise "Expecting a string for parameter `sequence`: {sequence.inspect}" unless sequence.kind_of?(String)
    sequence.split(/\W+/).map{ |e| e.chr.upcase }.join()
  end
end
