
# Design and implement a method that takes two integer arrays
# with unique values and returns their intersection in a new array.
# Note: Do not use the & operator.

def intersection(list1, list2)
  hash = {}
  result = []
  list1.each do |num|
    hash[num] = true
  end

  list2.each do |i|
    if hash[i] == true
      result << i 
    end 
  end 
  return result
end