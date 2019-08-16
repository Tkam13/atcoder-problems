n,k = gets.chomp.split.map(&:to_i)
xs = gets.chomp.split.map(&:to_i)
ans = []
(0..n-k-1).each do |i|
    x = xs.slice(i,k)
    sum = 0
    x.each do |l|
        sum += l.abs
    end 
    ans << sum 
end 
puts ans.min