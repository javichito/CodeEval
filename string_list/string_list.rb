File.open(ARGV[0]).each_line do |line|
	number, chars = line.chomp.split(',')
	chars = chars.split('')

	result = chars.repeated_permutation(number.to_i).to_a

	puts result.sort.uniq.map { |arr| arr.join('') }.join(',')
end