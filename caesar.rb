def caesar(phrase, shift)
	letters = phrase.split("")

	letters.map! do |l|
		if l =~ /[A-Z]/ then l = (65 + (((l.ord + (shift % 26)) % 65) % 26)).chr end
		if l =~ /[a-z]/ then l = (97 + (((l.ord + (shift % 26)) % 97) % 26)).chr end
		if l !=~ /[A-Za-z]/ then l end
	end
	
	puts  letters.join
end 