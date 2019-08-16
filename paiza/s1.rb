T,B,U,D,L,R = gets.chomp.split.map(&:to_i)
n = gets.to_i
ps = n.times.map{gets.to_i}
current = T
dice = Array.new(7){Array.new(7,1)}
dice[T][B] =  dice[B][T] = 2
dice[L][R] =  dice[R][L] = 2
dice[U][D] =  dice[D][U] = 2
cnt = 0
ps.each do |p|
  if p == current
    next
  else
    cnt += dice[p][current]
    current = p
  end
end
puts cnt