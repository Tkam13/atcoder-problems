h,w = gets.chomp.split.map(&:to_i)
ms = h.times.map{gets.chomp.split}

puts (101..200).inject(:*) / (1..100).inject(:*)