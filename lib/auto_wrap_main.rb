require_relative 'auto_wrap'

auto_wrap = AutoWrap.new
loop do
	text = gets.chomp
	break if text.eql?('exit')
	maxCol = gets.chomp
	break if maxCol.eql?('exit')
	puts auto_wrap.wrap text, maxCol
end
