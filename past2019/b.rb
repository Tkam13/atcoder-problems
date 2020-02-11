n = gets.to_i
as = n.times.map{gets.to_i}
as.each_cons(2) do |a,b|
  if b == a
    puts "stay"
  elsif b > a
    puts "up #{b-a}"
  elsif b < a
    puts "down #{a-b}"
  end
end
