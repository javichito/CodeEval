File.open(ARGV[0]).each_line do |line|
	numbers = line.chomp.split(',')
	n = numbers[0].to_i
	m = numbers[1].to_i
	puts n - (m * (n/m))
end