n,k = gets.chomp.split.map(&:to_i)
vs = gets.chomp.split.map(&:to_i)
ans = 0
have = []
le =[]
re = []
(1..k).to_a.reverse.each do |i|
  r