File.open(ARGV[0]).each_line do |line|
	number = line.chomp.to_i
	binary = number.to_s(2)
	puts binary
end