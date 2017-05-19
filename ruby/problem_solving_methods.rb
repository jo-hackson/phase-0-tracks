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

# def fib(number)

# array = [0, 1]

# # number create that many elements in the array

# # return last number (-1) in the array
# # build code that makes the arrays smaller if number == 0 or 1

# if number == 0
# 	array = []
# elsif number == 1
# 	array = [0]
# else
# 	nil
# end

# number -= 2

# number.times { |number| array << (array[-1] + array[-2])}

# p array
# p array[-3] + array[-2] == array[-1] # to check work
# end

# fib(100)

# fib(0)
# fib(0) #=> [0, 1] #=> expect []
# fib(1) #=> [0, 1] #=> expect [0]
# fib(2) #=> [0, 1] 
# fib(3) #=> [0, 1, 1] 
# fib(6)
# fib(100)

# Release 2

# Goal: write a method that will sort values in ascending order
# assume all values in array are integers

# Find lowest value and place into a new empty array
# Loop to until no values remain in the original array
# Replace old array with new array

array = [36, 8, 3, 567, 24, 734, 57, 4, 16, 86]

def sort(array)
	new_array = []

	until array == []
		new_array << array.min
		array.delete(array.min)
	end
	array = new_array	
end

p sort(array)










































