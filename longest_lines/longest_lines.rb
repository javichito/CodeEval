contents = File.open(ARGV[0]).read
contents = contents.split(/\n/)
n = contents.shift.chomp.to_i
lines_length = {}

contents.each_with_index do |line, i|
	if !line.chomp.empty?
		lines_length[i] = line.split('').length
	end
end

lines_length = lines_length.sort_by { |k,v| v }.reverse[0..n-1]
lines_length.each { |k,v| puts contents[k] }