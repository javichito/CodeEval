def find_pairs(numbers, x)
	result = []
	numbers.each_with_index do |n, i|
		numbers.each_with_index do |m, j|
			if j > 0 
				sum = n + m
				if sum == x 
					result << [n,m]
				end
			end
		end
	end
	result
end

def sort_unique(arr)
	arr.map { |pair| pair.sort }.uniq.sort
end

File.open(ARGV[0]).each_line do |line|
	numbers, x = line.chomp.split(';')
	numbers = numbers.split(',').map { |n| n = n.to_i }
	x = x.to_i

	result = find_pairs(numbers, x)
	if result.length > 0
		sorted_array = sort_unique(result)
		puts sorted_array.map { |pair| pair.join(',') }.join(';')
	else
		puts "NULL"
	end
end