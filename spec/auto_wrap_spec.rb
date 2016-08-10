require 'spec_helper'
require "minitest/autorun"

describe 'Auto wrap' do
	before do
		@auto_wrap = AutoWrap.new
	end

	describe 'when the length of it is less than the limit'  do
		it 'should not include line feed' do
			result = @auto_wrap.wrap "you are my", 10
			expect(result).to eq "you are my"
		end
	end

	describe 'when the length of it exceeds the limit' do
		it 'should include line feed' do
			result = @auto_wrap.wrap "you are my best friends", 10
			expect(result).to eq "you are my\\nbest\\nfriends"
		end
	end

	describe 'when text is empty' do
		it 'should be empty' do
			result = @auto_wrap.wrap "", 10
			expect(result).to eq ""
		end
	end

	describe 'when text is empty' do
		it 'should be empty' do
			result = @auto_wrap.wrap "", 10
			expect(result).to eq ""
		end
	end

	describe 'when maxCol is string' do
		it 'should get ArgumentError error' do
			expect {
				@auto_wrap.wrap "", "10"
			}.to raise_error(ArgumentError)
		end
	end

	describe 'when maxCol is less than 1' do
		it 'should get ArgumentError error' do
			expect {
				@auto_wrap.wrap "", 0
			}.to raise_error(ArgumentError)
		end
	end

	describe 'when the length of one word in sentence already exceeds the max column' do
		it 'should get ArgumentError error' do
			expect {
				@auto_wrap.wrap "you are my best friends", 5
			}.to raise_error(ArgumentError)
		end
	end
end
