File.open(ARGV[0]).each_line do |line|
	numbers = line.chomp.split(',')
	puts numbers.uniq.join(',')
end