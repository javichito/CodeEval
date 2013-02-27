def count_repetitions(arr, ele)
	times = 0
	arr.each do |e|
		times += 1 if (e == ele)
	end
	times.to_s
end

File.open(ARGV[0]).each_line do |line|
	number = line.chomp.split("")
	i = 0
	result = 0

	number.each do |digit|
		repetitions = count_repetitions(number, i.to_s) 

		if( digit == repetitions )
			result = 1
		else
			result = 0
			break
		end

		i += 1
	end

	puts result
end