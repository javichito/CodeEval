filename = gets.chomp

if File.exist?(filename)
	lines = File.readlines(filename)
	lines.each do |email|
		if email.chomp =~ /[a-z0-9!\#$%&'*+\/=?^_`{|}~-]+(?:\.[a-z0-9!\#$%\&'\*+\/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+(?:[A-Z]2}|com|org|net|edu|gov|mil|biz|info|mobi|name|aero|asia|jobs|museum)/i
			puts "true"
		else
			puts "false"
		end
	end
else
	puts "File not found in current directory"
end