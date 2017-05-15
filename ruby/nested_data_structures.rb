# design and build a nested date structure to
# represent a real-world construct

# use a Hash because want to be able to call
# values using the keys rather than index numbers

portuguese = {
	'nouns' => [
		'a toalha',
		'as ervilhas',
		'a areia',
		'a altura',
		'a guloseima'
	],

	'verbs' => [
		'picar',
		'pincelar',
		'salpicar' => ['to splash'],
		'desfrutar',
		'indigar'
	],

	'adjectives' => [
	'suculento',
	'cremoso',
	'eficaz',
	'qualquer',
	'requintada'
	]
}


# puts portuguese['nouns'] 
#=> a toalha
# as ervilhas
# a areia
# a altura
# a guloseima

# puts portuguese['nouns'][2]
#=> a areia

puts portuguese['verbs'][2][0]
#=> s
