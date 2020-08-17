h,w = gets.chomp.split.map(&:to_i)

def solve(h, w)
  (1..h-1).each.map{|h1|
    h2 = h - h1
    s1 = [h1*w, w*(h2/2.to_f).ceil, w*(h2/2.to_f).floor].minmax
    s2 = [h1*w, h2*(w/2.to_f).ceil, h2*(w/2.to_f).floor].minmax
    [s1[1] - s1[0], s2[1] - s2[0]].min
  }.min
end

puts [solve(h,w), solve(w,h)].min