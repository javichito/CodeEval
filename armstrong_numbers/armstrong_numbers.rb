def armstrong?(number)
	digits = number.to_s.split('')
	power = digits.length
	total_sum = 0
	digits.each { |digit| total_sum += digit.to_i ** power }
	return (number == total_sum)
end

File.open(ARGV[0]).each_line do |line|
	number = line.chomp.to_i
	puts (armstrong?(number)) ? "True" : "False"
end