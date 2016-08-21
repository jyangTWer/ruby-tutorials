require './fizz_buzz'

fizz_buzz = FizzBuzz.new
loop do
	input = gets.chomp
	break if input.eql?('exit')
	if input.to_i !=0
		input = input.to_i
		results = []
		(1..input).each do |count|
			result = fizz_buzz.generate(count)
			results.push(result)
		end
		puts results.join(' ')
	elsif input.is_a?(String)
		result = fizz_buzz.generate(input)
		puts result
	end
end
