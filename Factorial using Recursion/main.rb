def fact x
    x<2?1:x*fact(x-1)
end

puts fact(gets.chomp.to_i)
