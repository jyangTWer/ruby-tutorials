require 'number'

number = Number.new
loop do
	input = gets.chomp
	break if input.eql?('exit')
	puts number.num_to_words input
end