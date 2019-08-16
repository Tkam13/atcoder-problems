n,y = gets.chomp.split.map(&:to_i)
(0..n).each do |i|
  (0..n).each do |k|
    if 10000*i + 5000*k + 1000*(n-i-k) == y && i+k <= n
      puts "#{i} #{k} #{n-i-k}"
      exit
    end 
  end 
end 
puts "-1 -1 -1"