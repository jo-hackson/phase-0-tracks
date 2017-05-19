# go through each item in the array and compare with the
# number input with .each
	# if number (input = item) == true, then p .length, 
# whatever value is for length

# if not, return nil

# Release 0

# array = [42, 89, 23, 1]

# def search_array(array, number)

# count = 0
# poop = 0
# array.each { |array_value| 

# 		if number == array_value
# 			p count
# 			poop -= 1 
# 		else
# 			nil
# 			# p "mismatch"
# 		end
# 		count += 1
# 		poop += 1
# }

# if poop == array.length
# 	p nil
# end

# end

# print search_array(array, 4)


# Release 1

# create an array with a method of generating and
# returning Fib terms

def fib(number)

array = [0, 1]

# number create that many elements in the array
# build code that makes the arrays smaller if number == 0 or 1
number -= 2

number.times { |number| array << (array[-1] + array[-2])}

# return last number (-1) in the array


p array
end

# fib(1)
# fib(6)
# fib(100)





































