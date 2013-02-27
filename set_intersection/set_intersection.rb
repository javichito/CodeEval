File.open(ARGV[0]).each_line do |line|
	list1, list2 = line.chomp.split(';')
	list1 = list1.split(',')
	list2 = list2.split(',')
	puts (list1 & list2).join(',')
end