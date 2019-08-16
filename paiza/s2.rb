k,s,t = gets.chomp.split.map(&:to_i)

def sum(k)
  if k == 1
    return 3
  else
    k = 2*sum(k-1) + 3
  end
end

def abc(level)
  if level == 1
    return "ABC"
  else
    return "A" + abc(level-1) + "B" + abc(level-1) + "C"
  end
end

puts abc(k).slice(s-1..t-1)


