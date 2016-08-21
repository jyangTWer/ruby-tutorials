require 'spec_helper'

class AutoWrapTest < Minitest::Test
	def setup
		@auto_wrap = AutoWrap.new
	end

	def test_that_it_should_not_include_line_feed_when_only_have_one_word
		result = @auto_wrap.wrap "you", "10"

		assert_equal "you", result
	end

	def test_that_it_should_not_include_line_feed_when_the_length_of_it_is_less_than_the_limit
		result = @auto_wrap.wrap "you are my", 10

		assert_equal "you are my", result
	end

	def test_that_when_the_length_of_it_exceeds_the_limit_should_include_line_feed
		result = @auto_wrap.wrap "you are my best friends", 10

		assert_equal "you are my\nbest\nfriends", result
	end

	def test_that_when_text_is_empty_should_be_empty
		result = @auto_wrap.wrap "", 10

		assert_equal "", result
	end

	def test_that_when_text_is_empty_should_be_empty
		result = @auto_wrap.wrap "", 10

		assert_equal "", result
	end

	def test_that_when_maxCol_is_less_than_1_should_get_ArgumentError_error
		err = assert_raises ArgumentError do
			@auto_wrap.wrap("", 0)
		end
		
		assert_equal 'Please enter a reasonable maxCol', err.message
	end

	def test_that_when_the_length_of_one_word_in_sentence_already_exceeds_the_max_column_should_get_ArgumentError_error
		err = assert_raises ArgumentError do
			@auto_wrap.wrap "you are my best friends", 5
		end

		assert_equal "Length of one word already exceeds the max length", err.message
	end
end
