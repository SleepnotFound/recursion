def merge_sort(arr)
  if arr.length == 1
    return arr
  #split array if not 1 element.branch into their own methods
  else
    left = merge_sort(arr.slice!(0, arr.length / 2))
    right = merge_sort(arr)
  end

  #begin sorting and merging
  sorted = Array.new
  until left.empty? || right.empty?
    left[0] < right[0] ? sorted << left.shift : sorted << right.shift
  end

  #now either left or right is empty, add the remainding half
  return sorted + left + right

end

arr = [6,9,1,3,8,4,2,7,5]
arr2 = Array.new(rand(1..15)) {rand(1..20)}
puts merge_sort(arr2)