require 'spec_helper'

describe 'Line Feed' do
	context '#wrap' do
		it 'should not include line feed when the length of it is less than the limit' do
			result = lineFeed.wrap "you are my", 10
			expect(result).to eq "you are my"
		end

		it 'should include line feed when the length of it exceeds the limit' do
			result = lineFeed.wrap "you are my best friends", 10
			expect(result).to eq "you are my\\nbest\\nfriends"
		end

		it 'should be empty when text is empty' do
			result = lineFeed.wrap "", 10
			expect(result).to eq ""
		end

		let(:lineFeed){ LineFeed.new }
	end
end
