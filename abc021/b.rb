n = gets.to_i
a,b = gets.chomp.split.map(&:to_i)
k = gets.to_i
ps = gets.chomp.split.map(&:to_i)
array = [a,b,ps].flatten
if array.size == array.uniq.size
	puts "YES"
else
	puts "NO"
end