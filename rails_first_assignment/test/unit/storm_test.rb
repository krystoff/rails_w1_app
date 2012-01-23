require 'test_helper'

class StormTest < ActiveSupport::TestCase
   test "snowfall not negative" do
     storm = Storm.new(:day => "anyday")
     
     storm.snowfall = -1
     assert !storm.valid?
     assert_equal "should be >= 0", storm.errors.on(:snowfall)
     
     storm.snowfall = 0
     assert storm.valid?
     
     storm.snowfall = 1
     assert storm.valid?
   end
end
