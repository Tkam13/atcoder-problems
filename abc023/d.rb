@n = gets.to_i
@hs,@ss = @n.times.map{gets.chomp.split.map(&:to_i)}.transpose

def ok? x
  arr = []
  @n.times do |i|
    arr << (x - @hs[i]) / @ss[i].to_f
  end
  arr.sort!
  flag = true
  @n.times do |i|
    if arr[i] < i
      flag = false
      break
    end
  end
  flag
end

def binary_search
  ok = 10 ** 18
  ng = -1
  while (ok - ng).abs > 1
    mid = (ok + ng) / 2
    if ok?(mid)
      ok = mid
    else
      ng = mid
    end
  end
  ok
end

puts binary_search()
