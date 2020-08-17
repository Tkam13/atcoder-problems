n,x,y = gets.chomp.split.map(&:to_i)
ans = Array.new(n-1,0)

(1..n-1).each do |i|
  (i+1..n).each do |j|
    dist = [(i-j).abs, (x-i).abs + (y-j).abs + 1].min
    ans[dist-1] += 1
  end
end

puts ans