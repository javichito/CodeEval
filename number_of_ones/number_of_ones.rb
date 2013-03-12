File.open(ARGV[0]).each_line do |line|
	number = line.chomp.to_i
	binary = number.to_s(2)
	total = 0
	binary.split('').each { |digit| total +=1 if digit == "1" }
	puts total
end