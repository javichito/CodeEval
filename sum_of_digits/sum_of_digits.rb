File.open(ARGV[0]).each_line do |line|
	number = line.chomp.to_i
	numbers = number.to_s.split('')
	puts numbers.map { |n| n.to_i }.inject(:+)
end