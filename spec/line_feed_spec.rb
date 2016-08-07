require 'spec_helper'

describe 'Line Feed' do
	context '#wrap' do
		it 'should include line feed when the length of it exceeds the limit' do
			lineFeed = LineFeed.new
			result = lineFeed.wrap "you are my best friends", 10
			expect(result).to eq "you are my\\nbest\\nfriends"
		end
	end
end
