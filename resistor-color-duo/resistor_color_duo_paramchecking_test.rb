require 'minitest/autorun'
require_relative 'resistor_color_duo'

class ResistorColorDuoParamcheckingTest < Minitest::Test
  
  def test_check_parameter_is_array
    # skip
    exception = assert_raises RuntimeError do
      ResistorColorDuo.value("brown, black")
    end
    assert_equal("Expecting an array for parameter `colors`: \"brown, black\"", exception.message)
  end
  
  def test_check_parameter_is_array_size_min_2
    # skip
    exception = assert_raises RuntimeError do
      ResistorColorDuo.value(['green'])
    end
    assert_equal("Expecting an array of size between 2 and 3 for parameter `colors`: [\"green\"]", exception.message)
  end
  
  def test_check_parameter_is_array_size_max_3
    # skip
    exception = assert_raises RuntimeError do
      ResistorColorDuo.value(['green', 'brown', 'orange', 'violet'])
    end
    assert_equal("Expecting an array of size between 2 and 3 for parameter `colors`: [\"green\", \"brown\", \"orange\", \"violet\"]", exception.message)
  end
  
  def test_check_parameter_is_array_of_known_colors
    # skip
    exception = assert_raises RuntimeError do
      ResistorColorDuo.value(['black', 'pink'])
    end
    assert_equal("Expecting an array of strings among: black, brown, red, orange, yellow, green, blue, violet, grey, whitefor parameter `colors`: [\"black\", \"pink\"]", exception.message)
  end
  
end
