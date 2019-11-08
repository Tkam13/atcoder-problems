n,k,q = gets.chomp.split.map(&:to_i)
as = q.times.map{gets.to_i}
persons = Array.new(n,-q)
as.each do|a|
  persons[a-1] += 1
end

persons.each do |p|
  if k + p > 0
    puts "Yes"
  else
    puts "No"
  end
end
