File.open(ARGV[0]).each_line do |line|
	length, numbers = line.chomp.split(';')
	numbers = numbers.split(',').map { |n| n = n.to_i }
	dup = numbers.select { |n| numbers.count(n) > 1 }
	dup = dup.uniq.shift
	puts dup if dup
end