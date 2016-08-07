class Number
	MAPPING = {11=>"eleven", 12=>"twelve", 13=>"thirteen"}
	def num_to_words number
		raise ArgumentError, 'Please enter a positive number' if number.is_a?(String)
		parts = split_num_to_parts number
		parts = parts.reverse
		text = ""
		parts.each do |part|
			text = MAPPING[part] 
		end
		text + ' dollars.'
	end

	def split_num_to_parts number
		parts = []
		while number > 0
			temp = number%1000
			number = Integer(number/1000)
			parts.push(temp)
		end

		parts
	end
end
