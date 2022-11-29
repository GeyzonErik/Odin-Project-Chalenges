def substrings(string, array)
  result = {}
  lower_string = string.downcase

  array.each do |word|
    times_found = lower_string.scan(word).length
    result[word] = times_found unless times_found == 0
  end
  result
end

dictionary = %w[below down go going horn how howdy it i low own part partner sit]

p substrings("Howdy partner, sit down! How's it going", dictionary)
