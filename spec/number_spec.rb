require 'spec_helper'

describe 'Number' do
	context '#num_to_words' do
		it "" do
			result = number.num_to_words 11
			expect(result).to eq "eleven dollars."
		end

		it 'should get ArgumentError error when maxCol is less than 1' do
			expect {
				number.num_to_words "123"
			}.to raise_error(ArgumentError)
		end

		let(:number){ Number.new }
	end
end
