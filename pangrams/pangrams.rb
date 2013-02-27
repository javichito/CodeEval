File.open(ARGV[0]).each_line do |line|
	result = []
	alphabet = ('a'..'z').to_a
	pangram = line.chomp.downcase.gsub(/\W+/, '').split('').uniq.sort
	alphabet.each do |char|
		if !pangram.include? char
			result << char
		end
	end

	if result.length == 0
		puts "NULL"
	else
		puts result.join('')
	end
end