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
		'salpicar',
		'desfrutar',
		'indigar'
	],

	'english_verbs' => [
		'to string',
		'to paint',
		{'to splash' => ['salpicar', 'splashar']},
		'to enjoy',
		'to indicate'
	],

	'adjectives' => [
		'suculento',
		'cremoso',
		'eficaz',
		'qualquer',
		'requintada'
	]
}

# p portuguese['english_verbs'][2]
# => {"to splash"=>["salpicar", "splashar"]}

# p portuguese['english_verbs'][2]['to splash']
# ["salpicar", "splashar"]

# puts portuguese['nouns'] 
#=> a toalha
# as ervilhas
# a areia
# a altura
# a guloseima

# puts portuguese['nouns'][2]
#=> a areia

# puts portuguese['verbs'][2]
#=> salpicar

# p portuguese
# p portuguese['nouns'][1] = "peas"
# p portuguese
#=> change the value of "as ervilhas" to "peas"

body_parts = [
	# words in Portuguese
	["os dedos", "o pescoco", "o ombro", "o joelho", "a perna"],
	# words in English
	["fingers", "chest", "shoulder", "knee", "leg"],
	# gender of word
	["masculino", "masculino", "masculino", "masculino", "feminino"]
]

# translation_body_parts = body_parts.transpose
# p translation_body_parts
# create a new array with corresponding words in Portuguese, 
# English, and gender in one value


































