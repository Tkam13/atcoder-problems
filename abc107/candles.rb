n,k = gets.chomp.split.map(&:to_i)
xs = gets.chomp.split.map(&:to_i)
ans = xs.inject{|sum,x| sum + x.abs}
(0..n-k).each do |i|
    u = xs[i]
    v = xs[i + k - 1]
    if (u < 0 && v < 0) || (u > 0 && v > 0)
        ans = [ans , [u.abs , v.abs].max ].min
    else
        ans = [ans , 2 * u.abs + v.abs , u.abs + 2 * v.abs].min
    end
end

puts ans

