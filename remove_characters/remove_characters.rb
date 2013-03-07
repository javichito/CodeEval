File.open(ARGV[0]).each_line do |line|
	string, chars = line.chomp.split(', ')
	pattern = Regexp.new("[#{chars}]")
	puts string.gsub(pattern, '')
end