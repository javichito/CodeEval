Coordinate = Struct.new(:x, :y) do
end

Rectangle = Struct.new(:left_up, :right_down) do
end

File.open(ARGV[0]).each_line do |line|
	line = line.chomp.split(',')
	rect1 = Rectangle.new(Coordinate.new(line[0], line[1]), Coordinate.new(line[2], line[3]))
	rect2 = Rectangle.new(Coordinate.new(line[4], line[5]), Coordinate.new(line[6], line[7]))

	max = [rect1.left_up.x, rect2.left_up.x].max
	min = [rect1.right_down.y, rect2.right_down.y].min

	puts (max < min) ? "True" : "False"
end