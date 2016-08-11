require 'spec_helper'

class FizzBuzzTest < Minitest::Test
	def setup
		@fizz_buzz = FizzBuzz.new
	end

	def test_that_it_should_not_include_line_feed_when_the_length_of_it_is_less_than_the_limit
		result = @fizz_buzz.generate 3
		assert_equal "1 2 Fizz", result
	end
end
