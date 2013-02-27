def palindrome? number
	number.to_s.reverse == number.to_s
end

def not_palindrome? number
	!palindrome?(number)
end

def reverse_number number
	number.to_s.reverse.to_i
end

File.open(ARGV[0]).each_line do |line|
	number = line.chomp.to_i
	if number < 4294967295 then
		while not_palindrome? number do
			number += reverse_number(number)
		end
		puts number
	end
end
exit