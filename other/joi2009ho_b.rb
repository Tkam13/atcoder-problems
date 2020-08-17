d = gets.to_i
n = gets.to_i
m = gets.to_i
ts = n.times.map do |i|
  if i == 0
    a = 0
  else
    a = gets.to_i
  end
  [a,a+d]
end.flatten.sort
hs = m.times.map{gets.to_i}

sum = 0

def binary_search arr,key
  ng = -1
  ok = arr.size
  while (ok - ng).abs > 1
    mid = (ok + ng) / 2
    if arr[mid] >= key
      ok = mid
    else
      ng = mid
    end
  end
  low = (key - arr[ng]).abs
  high = (key - arr[ok]).abs
  if low < high
    low
  else
    high
  end
end


hs.each do |h|
  sum += binary_search(ts,h)
end

puts sum
