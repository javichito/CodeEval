File.open(ARGV[0]).each_line do |line|
	string = line.chomp
	if string.match /^((.*))$/
		puts "True"
	else
		puts "False"
	end 
end