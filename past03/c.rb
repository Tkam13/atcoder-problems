a,r,n = gets.chomp.split.map(&:to_i)
t = 10 ** 9
cnt = 1
while (a * r ** (cnt - 1) <= 10 ** 9) && r != 1
	cnt += 1
end

cnt = 10**18 if r == 1

if n <= cnt - 1
	puts a * r ** (n-1) 
else
	puts "large"
end