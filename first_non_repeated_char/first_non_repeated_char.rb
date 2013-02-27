File.open(ARGV[0]).each_line do |line|
	word = line.chomp.split('')
	characters = Hash.new(0)
	word.each { |char| characters[char] += 1 }
	
	puts characters.select { |k,v| v == 1 }.to_a[0][0]
end