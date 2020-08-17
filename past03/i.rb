n = gets.to_i
q = gets.to_i
qs = q.times.map{gets.chomp.split.map(&:to_i)}
row = Array.new(n,&:itself)
colum = Array.new(n,&:itself)
transpose = false

qs.each do |i,a,b|
	a -= 1 if a != nil
	b -= 1 if b != nil
	if i == 1
		if transpose
			colum[a],colum[b] = colum[b],colum[a]
		else
			row[a],row[b] = row[b],row[a]
		end
	elsif i == 2
		if transpose
			row[a],row[b] = row[b],row[a]
		else
			colum[a],colum[b] = colum[b],colum[a]
		end
	elsif i == 3
		transpose = !transpose
	elsif i == 4
		if transpose
			puts n * row[b] + colum[a]
		else
			puts n * row[a] + colum[b]
		end
	end
end
