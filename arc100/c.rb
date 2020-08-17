n = gets.to_i
as = gets.chomp.split.map.with_index{|a,i| a.to_i - i - 1}.sort

x = as[n/2]

ans = as.inject(0){|sum,a| sum += (a-x).abs}
puts ans