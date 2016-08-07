require 'spec_helper'

describe 'Number' do
	context '#num_to_words' do
		it "has one digit" do
			result = number.num_to_words "3"
			expect(result).to eq "three dollars."
		end

		it "has two digit" do
			result = number.num_to_words "13"
			expect(result).to eq "thirteen dollars."
		end

		it "has three digit which doesn't include decade place" do
			result = number.num_to_words "103"
			expect(result).to eq "one hundred (and) three dollars."
		end

		it "has three digit" do
			result = number.num_to_words "123"
			expect(result).to eq "one hundred (and) twenty three dollars."
		end

		it "has four digit" do
			result = number.num_to_words "1003"
			expect(result).to eq "one thousand (and) three dollars."
		end

		it "has four digit whose last two digit is 30" do
			result = number.num_to_words "1030"
			expect(result).to eq "one thousand (and) thirty dollars."
		end

		let(:number){ Number.new }
	end
end
