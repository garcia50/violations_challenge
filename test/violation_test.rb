require 'minitest/autorun'
require 'minitest/pride'
require '../lib/violation'

class ViolationTest < Minitest::Test
  attr_reader :violation 

  def setup
    @violation = Violation.new("./violation-2012.csv")
  end

  def test_it_exist
    assert_instance_of Violation, violation
  end

  def test_info_is_not_empty
    assert_equal 
  end

end


# Given a CSV with information about code violations prepare a script that will print a table to the terminal with the count, date of earliest violation, and date of latest violation for each violation type.