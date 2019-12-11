n = gets.to_i
s_array = n.times.map{gets.chomp}
first_b = 0
last_a = 0
both = 0
cnt = 0
s_array.each do|s|
  (0..s.size-2).each do|i|
    if s.slice(i,2) == "AB"
      cnt += 1
    end
  end
  if s[0] == "B" && s[-1] == "A"
    both += 1
  elsif s[0] == "B"
    first_b += 1
  elsif s[-1] == "A"
    last_a += 1
  end
end

if both == 0
  cnt += [first_b,last_a].min
else
  if first_b + last_a > 0
    cnt += both + [first_b,last_a].min
  else
    cnt += both - 1
  end
end

puts cnt