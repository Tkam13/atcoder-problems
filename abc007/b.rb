s = gets.chomp.chars
alph = [*"a".."z"]
if s[0] == "a"
	s.pop
else
	s[0] = alph[alph.index(s[0]) - 1]
end

if s.empty?
	puts -1
else
	puts s.join
end