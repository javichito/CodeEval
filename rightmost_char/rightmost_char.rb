File.open(ARGV[0]).each_line do |line|
	string, char = line.chomp.split(',')
	index = string.rindex(char)
	puts index if !index.nil?
end