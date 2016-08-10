require 'number'

auto_wrap = AutoWrap.new
loop do
	input = gets.chomp
	break if input.eql?('exit')
	puts auto_wrap.num_to_words input
end
