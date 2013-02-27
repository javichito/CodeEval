File.open(ARGV[0]).each_line do |line|
	numbers = line.chomp.split(',')
	x = numbers[0].to_i
	n = numbers[1].to_i
	i = 2
	multiple = 0

	while multiple < x do
		multiple = n * i
		i += 1
	end

	puts multiple
end