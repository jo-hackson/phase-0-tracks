# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

# p "iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”

# p "zom".insert(1, "o")
# => “zoom”

# p "enhance".center(20)
# p "enhance".center(20, " ")
# => "    enhance    "

# p "Stop! You’re under arrest!".upcase
# "Stop! You’re under arrest!".each_char { |c| print c.upcase}
# => "STOP! YOU’RE UNDER ARREST!"

# p "the usual".insert(-1, " suspects")
# p "the usual".concat(" suspects")
# => "the usual suspects"

# p " suspects".prepend("the usual")
# => "the usual suspects"

# p "The case of the disappearing last letter".chop
# p "The case of the disappearing last letter".delete "r"
# => "The case of the disappearing last lette"

# p "The case of the disappearing first letter".delete "T"
# p "The case of the disappearing first letter".reverse.chop.reverse

# => "he mystery of the missing first letter"

# p "Elementary,    my   dear        Watson!".squeeze
# => "Elementary, my dear Watson!"

# "z".each_byte {|c| print c, ' '}
# => 122 
# (What is the significance of the number 122 in relation to the character z?)

# p "How many times does the letter 'a' appear in this string?".count "a"
# => 4

