n,m = gets.chomp.split.map(&:to_i)
mod = 10**9 + 7
d = (1..n).inject{|sum, x|sum * x % mod }
s = (1..m).inject{|sum, x|sum * x % mod }

if (n - m).abs == 0
  puts d * s * 2 % mod
elsif (n - m).abs == 1
  puts d * s % mod
else
  puts 0
end