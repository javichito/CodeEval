(1..12).each do |n|
	line = ""
	(1..12).each do |m|
		r = n * m
		line += r.to_s.rjust(4)
	end
	puts line
end