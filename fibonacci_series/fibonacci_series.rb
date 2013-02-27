def fibonacci(number)
	return 0 if number == 0
	return 1 if number == 1
	return fibonacci(number - 1) + fibonacci(number - 2)
end

File.open(ARGV[0]).each_line do |line|
	number = line.chomp.to_i
	puts fibonacci(number)
end