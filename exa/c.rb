n,q = gets.chomp.split.map(&:to_i)
s = gets.chomp.chars
ts = q.times.map{gets.chomp.split.map(&:to_s)}

array = Array.new(100){Array.new}
s.each.with_index(1) do |t,i|
    array[t.ord] << i 
end 
count = n
ts.each do |t,d|
    k = array[t.ord]
    k.size.times do
        i = k.shift
        if d == "L"
            i = i - 1
            if i == 0 || i == n + 1
                count -= 1
            else 
                array[s[i-1].ord] << i 
            end 
        else 
            i = i + 1
            if i == 0 || i == n + 1
                count -= 1
            else 
                array[s[i-1].ord] << i 
            end 
        end 
    end 
end 
puts count