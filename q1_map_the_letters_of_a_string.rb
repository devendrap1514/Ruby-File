def map_char_to_index(str)
	hsh = {}
	str.each_char.with_index do |char, i|
		if hsh.has_key?(str[i])
			hsh[char].push(i)
		else
			hsh[char] = [i]
		end
	end
	return hsh
end


puts(map_char_to_index("Aman Ali Rizvi"))
