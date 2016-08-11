require 'spec_helper'

class FizzBuzzTest < Minitest::Test
	def setup
		@fizz_buzz = FizzBuzz.new
	end

	def test_that_it_outputs_Fizz_when_three_is_an_aliquot_part_of_number
		result = @fizz_buzz.generate 3
		assert_equal "Fizz", result
	end

	def test_that_it_outputs_Fizz_when_a_string_contains_three_character
		result = @fizz_buzz.generate "containes 3 character"
		assert_equal "Fizz", result
	end

	def test_that_it_outputs_Buzz_when_five_is_an_aliquot_part_of_number
		result = @fizz_buzz.generate 10
		assert_equal "Buzz", result
	end

	def test_that_it_outputs_Buzz_when_a_string_contains_three_character
		result = @fizz_buzz.generate "containes 5 character"
		assert_equal "Buzz", result
	end
end
