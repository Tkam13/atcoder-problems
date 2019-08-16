n = gets.to_i
("1".."9").each do |i|
  @is = i*3
  break @is if @is.to_i >= n
end
puts @is
