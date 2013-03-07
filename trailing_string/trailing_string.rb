File.open(ARGV[0]).each_line do |line|
	a, b = line.chomp.gsub(' ', '').split(',')
	pattern = Regexp.new("#{b}$")
	puts (a.match(pattern)) ? 1 : 0
end