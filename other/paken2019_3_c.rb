n,m = gets.chomp.split.map(&:to_i)
as = n.times.map{gets.chomp.split.map(&:to_i)}
array = Array.new(m){Array.new(m,0)}
ans = 0
as.each do |a|
  (0..m-2).each do |i|
    (i..m-1).each do |j|
      if a[i] > a[j]
        array[i][j] += a[i]
      else
        array[i][j] += a[j]
      end
    end
  end
end

(0..m-2).each do |i|
  (i..m-1).each do |j|
    ans = array[i][j] if ans < array[i][j]
  end
end

puts ans