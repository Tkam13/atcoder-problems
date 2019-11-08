n,k = gets.chomp.split.map(&:to_i)
as = gets.chomp.split.map(&:to_i)
mod = 1e9+7.to_i
order = 0
trans = 0
as.each_with_index do |a,i|
  (i..n-1).each do|k|
      if a > as[k]
        trans += 1
      end
      if a < as[k]
        order += 1
      end
  end
end
num1 = k*(k+1)/2
num2 = k*(k-1)/2
puts (trans*num1 + order*num2)%mod.to_i