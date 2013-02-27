total = 0
File.open(ARGV[0]).each_line do |line|
	number = line.chomp.to_i
	total += number
end
puts total