# frozen_string_literal: true

h, w = gets.chomp.split.map(&:to_i)
ans = if h == 1 || w == 1
        1
      else
        ((w / 2 + w % 2) * (h / 2 + h % 2)) + ((w / 2) * (h / 2))
      end
puts ans
