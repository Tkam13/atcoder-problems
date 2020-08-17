n = gets.to_i
@ss = 5.times.map{gets.chomp}
ans = []

def solve n
	if @ss[0][4*n-3..4*n-1] == "###"
		if @ss[1][4*n-3..4*n-1] == "#.#"
			if @ss[2][4*n-3..4*n-1] == "#.#"
				0
			else
				if @ss[3][4*n-3..4*n-1] == "#.#"
					8
				else
					9
				end
			end
		elsif @ss[1][4*n-3..4*n-1] == "..#"
			if @ss[2][4*n-3..4*n-1] == "..#"
				7
			else
				if @ss[3][4*n-3..4*n-1] == "#.."
					2
				else
					3
				end
			end
		else
			if @ss[3][4*n-3..4*n-1] == "..#"
				5
			else
				6
			end
		end
	else
		if @ss[1][4*n-3..4*n-1] == "##."
			1
		else
			4
		end
	end
end

(1..n).each do |i|
	ans << solve(i)
end

puts ans.join