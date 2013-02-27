def sum_digits_square(number)
	r = 0
	number.split("").each { |digit| r += digit.to_i * digit.to_i }
	r.to_s
end

def happy_number(number)
	return 1 if number == "1"
	begin
		return happy_number( sum_digits_square(number) )
	rescue SystemStackError
		return 0
	end
end

File.open(ARGV[0]).each_line do |line|
	number = line.chomp
	puts happy_number(number)
end