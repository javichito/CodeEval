require 'prime'

File.open(ARGV[0]).each_line do |line|
	n1, n2 = line.chomp.split(',').map(&:to_i)

	result = []
	(n1..n2).each { |n| result << n if Prime.prime?(n) }
	puts result.length
end