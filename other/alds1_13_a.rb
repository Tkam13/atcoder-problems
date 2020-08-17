k = gets.to_i
qs = k.times.map{gets.chomp.split.map(&:to_i)}
ans = Array.new(8){Array.new(8,".")}

[*0..7].permutation do |as|
  flag = true
  pos = qs.dup
  as.each_with_index do |c,r|
    pos.each do |x,y|
      break if [r,c] == [x,y]
      if (r - x).abs == (c - y).abs || (r == x && y != c)
        flag = false
        break
      else
        pos << [r,c]
      end
    end
  end
  if flag
    pos.each do |x,y|
      ans[x][y] = "Q"
    end
    break
  end
end

ans.each do |a|
  puts a.join
end
