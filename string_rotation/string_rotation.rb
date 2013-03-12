File.open(ARGV[0]).each_line do |line|
	word1, word2 = line.chomp.split(',')
	puts (word1.split('').sort == word2.split('').sort) ? "True" : "False"
end