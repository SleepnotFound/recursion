def fibs(size)
  arr = Array.new
  size.times do |i|
    arr[i] = i if i < 2
    arr[i] = arr[-1] + arr[-2] if i >= 2
  end
  arr
end
puts "Iteration:\n#{fibs(8)}"

def fibs_rec(size)
  return [0] if size == 1
  return [0,1] if size == 2
  
  arr = fibs_rec(size - 1)
  arr << arr[-1] + arr[-2]
end
puts "Recursion:\n#{fibs_rec(8)}"