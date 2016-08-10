require 'spec_helper'

describe 'Number' do
	before do
		@number = Number.new
	end

	describe 'when has one digit' do
		it "must be two words" do
			result = @number.num_to_words "3"
			expect(result).to eq "three dollars."
		end
	end

	describe 'when has two digit' do
		it "must be two words with decade digit" do
			result = @number.num_to_words "13"
			expect(result).to eq "thirteen dollars."
		end

		it "must be two words without decade digit" do
			result = @number.num_to_words "04"
			expect(result).to eq "four dollars."
		end
	end

	describe 'when has three digit' do
		it "must start with hundred" do
			result = @number.num_to_words "123"
			expect(result).to eq "one hundred (and) twenty three dollars."
		end

		it "must be five words without decade" do
			result = @number.num_to_words "402"
			expect(result).to eq "four hundred (and) two dollars."
		end

		it "must be five words without decade" do
			result = @number.num_to_words "700"
			expect(result).to eq "seven hundred dollars."
		end
	end

	describe 'when has four digit' do
		it "must be five words without decade and hundred's place" do
			result = @number.num_to_words "1003"
			expect(result).to eq "one thousand (and) three dollars."
		end

		it "must start with thousand" do
			result = @number.num_to_words "9876"
			expect(result).to eq "nine thousand (and) eight hundred (and) seventy six dollars."
		end
	end

	describe 'when has seven digit' do
		it "must start with million" do
			result = @number.num_to_words "4359876"
			expect(result).to eq "four million (and) three hundred (and) fifty nine thousand (and) eight hundred (and) seventy six dollars."
		end
	end

	describe 'when has ten digit' do
		it "must start with billion" do
			result = @number.num_to_words "1234359876"
			expect(result).to eq "one billion (and) two hundred (and) thirty four million (and) three hundred (and) fifty nine thousand (and) eight hundred (and) seventy six dollars."
		end
	end

	describe 'when has thirteen digit' do
		it "must start with trillion" do
			result = @number.num_to_words "8261234359876"
			expect(result).to eq "eight trillion (and) two hundred (and) sixty one billion (and) two hundred (and) thirty four million (and) three hundred (and) fifty nine thousand (and) eight hundred (and) seventy six dollars."
		end
	end
end
