h,w,k = gets.chomp.split.map(&:to_i)
cs = h.times.map{gets.chomp.chars}
black_num = cs.inject(0){|res,c| res += c.count("#")}
ans = 0
flag = black_num - k

(2**h).times do |i|
  (2**w).times do |k|
    cnt = 0

    h.times do |j|
      w.times do |l|
        cnt += 1 if cs[j][l] == "#" && i[j] == 1
        cnt += 1 if cs[j][l] == "#" && k[l] == 1
        cnt -= 1 if cs[j][l] == "#" && i[j] == 1 && k[l] == 1
      end
    end
    ans += 1 if cnt == flag
  end
end

puts ans
