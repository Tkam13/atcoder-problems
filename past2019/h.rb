n = gets.to_i
cs = gets.chomp.split.map(&:to_i)
q_size = gets.to_i
query = q_size.times.map{gets.chomp.split.map(&:to_i)}
odd_min = [10 ** 10,-1]
total_min =[10 ** 10,-1]
cnt = 0
cs.each_with_index do |c,i|
  if (i+1).odd? && (odd_min[0] > c)
    odd_min = [c,i]
  end
  if total_min[0] > c
    total_min = [c,i]
  end
end
# query_i = 0
total_flag = false
total_cnt = 0
odd_flag = false
odd_cnt = 0
query.each do |q,a,b|
  if q == 1
    if total_flag
      cs.map!{|c| c - total_cnt}
      total_cnt = 0
      total_flag = false
    end
    if odd_flag
      0.step(n-1,2) do |i|
        cs[i] -= odd_cnt
      end
      odd_cnt = 0
      odd_flag = false
    end

    if cs[a-1] >= b
      cnt += b
      cs[a-1] -= b
      if cs[a-1] < total_min[0]
        total_min = [cs[a-1],a-1]
      end
      if a.odd? && (cs[a-1] < odd_min[0])
        odd_min = [cs[a-1],a-1]
      end
    end

  elsif q == 2
    if (total_min[1]+1).odd?
      if total_min[0] >= a
        cnt += a * ((n+1)/2)
        total_min[0] -= a
        odd_min[0] -= a
        odd_flag = true
        odd_cnt += a
      end
    else
      if odd_min[0] >= a
        cnt += a * ((n+1)/2)
        odd_min[0] -= a
        odd_flag = true
        odd_cnt += a
        if odd_min[0] < total_min[0]
          total_min = odd_min
        end
      end
    end

  elsif q == 3
    if total_min[0] >= a
      cnt += a * n
      total_min[0] -= a
      odd_min[0] -= a
      total_flag = true
      total_cnt += a
    end
  end
  # p [cnt,query_i]
  # p cs
  # p total_min
  # p odd_min
  # query_i += 1
end

puts cnt