n = gets.to_i
s = gets.chomp.chars
k = gets.to_i
ans = []
s.each do |c|
  if c != s[k-1]
    ans << "*"
  else
    ans << c
  end
end
puts ans.join