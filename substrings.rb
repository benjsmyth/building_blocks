def substring(phrase, words)
	substrings = {}

	words.each do |word|
		occurrences = phrase.downcase.scan(/#{word}/)
		substrings["#{word}"] = occurrences.length
		substrings.delete_if {|key, value| value == 0}
	end
	
	puts substrings
end