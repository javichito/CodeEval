File.open(ARGV[0]).each_line do |line|
	word, substr = line.chomp.split(',')

	result = word.match substr

	puts (result) ? true : false
end