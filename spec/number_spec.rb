require 'spec_helper'

class NumberTest < Minitest::Test
	def setup
		@number = Number.new
	end

	def test_that_it_must_be_two_words_when_has_one_digit
		result = @number.num_to_words "3"

		assert_equal "three dollars.", result
	end

	def test_that_it_must_be_two_words_with_decade_digit_when_has_two_digit
		result = @number.num_to_words "13"

		assert_equal "thirteen dollars.", result
	end

	def test_that_it_must_be_two_words_without_decade_digit_when_has_two_digit
		result = @number.num_to_words "04"

		assert_equal "four dollars.", result
	end

	def test_that_it_must_start_with_hundred_when_has_three_digit
		result = @number.num_to_words "123"

		assert_equal "one hundred (and) twenty three dollars.", result
	end

	def test_that_it_must_be_five_words_without_decade_when_has_three_digit
		result = @number.num_to_words "402"

		assert_equal "four hundred (and) two dollars.", result
	end

	def test_that_it_must_be_three_words_without_decade_and_unit_when_has_three_digit
		result = @number.num_to_words "700"

		assert_equal "seven hundred dollars.", result
	end

	def test_that_it_must_be_five_words_without_decade_and_hundreds_place_when_has_four_digit
		result = @number.num_to_words "1003"

		assert_equal "one thousand (and) three dollars.", result
	end

	def test_that_it_must_start_with_thousand_when_has_four_digit
		result = @number.num_to_words "9876"

		assert_equal "nine thousand (and) eight hundred (and) seventy six dollars.", result
	end

	def test_that_it_only_has_thousand_when_has_four_digit
		result = @number.num_to_words "9000"

		assert_equal "nine thousand dollars.", result
	end

	def test_that_it_must_start_with_million_when_has_seven_digit
		result = @number.num_to_words "4359876"

		assert_equal "four million (and) three hundred (and) fifty nine thousand (and) eight hundred (and) seventy six dollars.", result
	end

	def test_that_it_only_has_million_when_has_seven_digit
		result = @number.num_to_words "4000006"

		assert_equal "four million (and) six dollars.", result
	end

	def test_that_it_must_start_with_billion_when_has_ten_digit
		result = @number.num_to_words "1234359876"

		assert_equal "one billion (and) two hundred (and) thirty four million (and) three hundred (and) fifty nine thousand (and) eight hundred (and) seventy six dollars.", result
	end

	def test_that_it_only_has_billion_when_has_ten_digit
		result = @number.num_to_words "1000000006"

		assert_equal "one billion (and) six dollars.", result
	end

	def test_that_it_must_start_with_trillion_when_has_thirteen_digit
		result = @number.num_to_words "8261234359876"

		assert_equal "eight trillion (and) two hundred (and) sixty one billion (and) two hundred (and) thirty four million (and) three hundred (and) fifty nine thousand (and) eight hundred (and) seventy six dollars.", result
	end

	def test_that_it_only_has_trillion_when_has_thirteen_digit
		result = @number.num_to_words "8000000000006"

		assert_equal "eight trillion (and) six dollars.", result
	end
end
