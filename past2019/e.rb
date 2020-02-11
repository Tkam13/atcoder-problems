n,q = gets.chomp.split.map(&:to_i)
query = q.times.map{gets.chomp.split.map(&:to_i)}
ans = Array.new(n){Array.new(n,"N")}

query.each do |q,a,b|
  if q == 1
    ans[a-1][b-1] = "Y"

  elsif q == 2
    (0..n-1).each do|i|
      if ans[i][a-1] == "Y"
        ans[a-1][i] = "Y"
      end
    end

  elsif q == 3
    que = []
    ans[a-1].each_with_index do|c,i|
      if c == "Y"
        que << i
      end
    end
    que.each do |i|
      ans[i].each_with_index do|c,j|
        if c == "Y"
          ans[a-1][j] = "Y"
        end
      end
    end

  end
end
(0..n-1).each do|i|
  ans[i][i] = "N"
end

ans.each do |array|
  puts array.join("")
end