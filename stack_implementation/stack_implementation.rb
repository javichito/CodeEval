class Stack
	def initialize
		@elements = []
	end

	def each
		@elements.each { |ele| yield(ele) }
	end

	def each_with_index
		i = -1
		@elements.each { |ele| yield(ele, i+=1) }
	end

	def push(number)
		@elements << number
	end

	def pop
		@elements.pop
	end

	def count
		@elements.length
	end

	def elements
		@elements.reverse
	end

	def look
		@elements.last
	end
end

File.open(ARGV[0]).each_line do |line|
	result = []
	numbers = line.chomp.split(' ')
	stack = Stack.new
	numbers.each { |n| stack.push(n) }

	stack.each_with_index do |n,i|
		result << stack.pop
	end

	puts result.join(' ')
end