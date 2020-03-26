a = Hash.new 0
gets.chomp.downcase.each_char do |b|
    a[b] += 1
end
("a".."z").each do |x|
    print x + ' -> '
    puts a[x]
end
