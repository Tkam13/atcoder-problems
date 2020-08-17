n = gets.to_i
s = gets.chomp.split.map(&:to_i)
q = gets.to_i
t = gets.chomp.split.map(&:to_i)
cnt = 0

def binary_search(arr, key)
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
  arr[ok]
end

t.each do |i|
  cnt += 1 if binary_search(s,i) == i
end

puts cnt
