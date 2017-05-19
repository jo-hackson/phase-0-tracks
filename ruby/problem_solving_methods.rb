# go through each item in the array and compare with the
# number input with .each
	# if number (input = item) == true, then p .length, 
# whatever value is for length

# if not, return nil

array = [42, 89, 23, 1]

def search_array(array, number)

count = 0
poop = 0
array.each { |array_value| 

		if number == array_value
			p count
			poop -= 1 
		else
			nil
			# p "mismatch"
		end
		count += 1
		poop += 1
}

if poop == array.length
	p nil
end

end


print search_array(array, 4)
# p search_array(array, 4)
# puts search_array(array, 4)