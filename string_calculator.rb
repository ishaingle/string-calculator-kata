class StringCalculator
	def add(numbers)
		return 0 if numbers.empty?

		delimiter = /,|\n/
		if numbers.start_with?("//")
			delimiter = numbers[2]
			numbers = numbers[4..-1]
		end

		numbers_list = numbers.split(delimiter).map(&:to_i)
		negative_numbers = numbers_list.select{|x| x < 0}

		raise CustomError, "negative numbers not allowed: #{negative_numbers.join(', ')}" unless negative_numbers.empty?

		numbers_list.sum
	end
end