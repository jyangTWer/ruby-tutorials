class Number
	MAPPING = {1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine", 10 => "ten", 11 => "eleven", 12 => "twelve", 13 => "thirteen", 14 => "fourteen", 15 => "fifteen", 16 => "sixteen", 17 => "seventeen", 18 => "eighteen", 19 => "nineteen", 20 => "twenty", 30 => "thirty", 40 => "fourty", 50 => "fifty", 60 => "sixty", 70 => "seventy", 80 => "eighty", 90 => "ninety"}
	UNITS = {0=>"hundred", 1=>'thousand', 2=>"million", 3=>"billion", 4=>"trillion"}

	def num_to_words number
		number = number.to_i if number.is_a?(String)
		parts = split_num_to_parts number
		words = []
		length_of_parts = parts.length
		parts.each_with_index do |part, index|
			groups = []
			groups = get_a_group_number_with_three_digits part
			words.push('(and)') if words.length > 0 && groups.length > 0
			words = words + groups
			if index < length_of_parts - 1
				words.push(UNITS[length_of_parts-index-1]) 
			end
		end
		return "You need to input number" if words.length == 0

		words.join(' ') + ' dollars.'
	end

	def split_num_to_parts number
		parts = []
		while number > 0
			temp = number%1000
			number = Integer(number/1000)
			parts.push(temp)
		end

		parts.reverse
	end

	def get_a_group_number_with_three_digits part
		digt_place = part%10
		last_two_number = part%100
		decade_place = last_two_number/10
		hundred_place = part/100
		words = []
		if hundred_place > 0 
			words.push(MAPPING[hundred_place])
			words.push(UNITS[0])
		end

		if last_two_number != 0
			words.push('(and)') if words.length > 0
			if decade_place < 2
				words.push(MAPPING[last_two_number])
			else
				words.push(MAPPING[last_two_number-digt_place])
				words.push(MAPPING[digt_place]) if digt_place > 0
			end
		end
		words
	end
end
