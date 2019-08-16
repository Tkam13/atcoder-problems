n,m,q = gets.chomp.split.map(&:to_i)
people = m.times.map{gets.chomp.split.map(&:to_i)}
qs = q.times.map{gets.chomp.split.map(&:to_s)}
array = Array.new(n+1){Array.new(n+1,0)}
people.each do |i,j,k|
  array[i][j] = array[j][i] = k
end
group_in = Array.new(n+1,0)
group_out = Array.new(n+1,1)

qs.each do |op,person|
  max_num = 0
  person = person.to_i
  if op == "+"
    group_in[person] = 1
    group_out[person] = 0
  else
    group_in[person] = 0
    group_out[person] = 1
  end
  group_in.each_with_index do |inner,i|
    group_out.each_with_index do|out,j|
      if inner == 1 && out == 1
        max_num = array[i][j] if array[i][j] > max_num
      end
    end
  end
  puts max_num
end
