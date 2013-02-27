require 'prime'

File.open(ARGV[0]).each_line do |line|
	n = line.chomp.to_i
	puts (2..n).select { |n| n if Prime.prime?(n) }.join(',')
end