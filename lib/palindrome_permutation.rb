# Write a method which will take two strings as arguments 
# and returns true if one string is a permutation of the other.

def palindrome_permutation?(string)
  hash = {}
  count = 0

  if string.empty?
    return true
  end

  string.each_char do |i|
    if hash[i] == nil
      hash[i] = 1
    else
      hash[i] += 1
    end
  end

  string_array = hash.values
  string_array.each do |num|
    if num.odd? == true
      count += 1
      if count > 1
        return false
      end
    end
  end
  return true


end