File.open(ARGV[0]).each_line do |line|
	numbers = line.chomp.split(',')
	n = numbers[0].to_i.to_s(2)
	p1 = numbers[1].to_i
	p2 = numbers[2].to_i
	
	puts (n[p1] == n[p2]) ? "true" : "false"
end