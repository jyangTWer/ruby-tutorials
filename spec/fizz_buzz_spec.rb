require 'spec_helper'

class FizzBuzzTest < Minitest::Test
	def setup
		@fizz_buzz = FizzBuzz.new
	end

	def test_that_it_outputs_2_when_2_is_not_an_aliquot_part_of_number
		result = @fizz_buzz.generate 2

		assert_equal 2, result
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

	def test_that_it_outputs_string_when_the_string_contains_nothing
		result = @fizz_buzz.generate "containes character"
		assert_equal "containes character", result
	end

	def test_that_it_outputs_FizzBuzz_when_three_and_five_are_all_aliquot_part_of_number
		result = @fizz_buzz.generate 15
		assert_equal "FizzBuzz", result
	end

	def test_that_it_outputs_FizzBuzz_when_a_string_containes_all_three_and_five
		result = @fizz_buzz.generate "contains all 3 and 5"
		assert_equal "FizzBuzz", result
	end
end
