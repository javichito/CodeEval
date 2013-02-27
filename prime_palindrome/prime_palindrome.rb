require 'prime'

def palindrome? number
	(number.to_s.reverse == number.to_s)
end

max_palindrome_prime = 1000.downto(2).find { |n| n if palindrome?(n) && Prime.prime?(n)  }
puts max_palindrome_prime