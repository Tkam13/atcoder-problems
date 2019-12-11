r,g,b,n = gets.chomp.split.map(&:to_i)
cnt = 0
(0..n/r).each do |i|
  (0..n/g).each do |j|
      if (n -(r*i + g*j))%b == 0 && (n -(r*i + g*j)) >= 0
        cnt += 1
      end
  end
end

puts cnt