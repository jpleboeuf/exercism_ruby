class ResistorColorDuo
  CV = {
      'black'  => 0,
      'brown'  => 1,
      'red'    => 2,
      'orange' => 3,
      'yellow' => 4,
      'green'  => 5,
      'blue'   => 6,
      'violet' => 7,
      'grey'   => 8,
      'white'  => 9,
    }
  def self.value(colors)
    raise "Expecting an array for parameter `colors`: #{colors.inspect}" unless colors.kind_of?(Array)
    raise "Expecting an array of size between 2 and 3 for parameter `colors`: #{colors.inspect}" unless colors.length >= 2 and colors.length <= 3
    raise "Expecting an array of strings among: " + CV.keys.join(", ") + "for parameter `colors`: #{colors.inspect}" unless CV.key?(colors[0]) and CV.key?(colors[1])
    colors.first(2).map(&CV).join('').to_i
  end
end
