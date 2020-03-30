loop do
  n,x = gets.chomp.split.map(&:to_i)
  break if n == 0 && x == 0
  ans = 0
  (1..n).each do |a|
    (1..n).each do |b|
      c = x - a - b
      if [a,b,c].uniq.size == 3 && c > 0 && c <= n
        ans += 1
      end
    end
  end
  puts ans / 6
end
