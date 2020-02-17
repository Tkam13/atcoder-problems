n = gets.to_i
as = gets.chomp.split.map(&:to_i)
flag = true
as.each do |a|
  if a.even?
    if !(a % 3 == 0 || a % 5 == 0)
      flag = false
      break
    end
  end
end
puts flag ? "APPROVED" : "DENIED"