require_relative 'enumerables'
require 'pry-byebug'

arr = [1, 2, 3, 4, 5]
arr_1 = [1, 'string', nil, 0.1]
hash = {:a=>1, :b=>2, :c=>3}

# my_each vs built-in each
puts "-------- #my_each vs #each --------"
arr.my_each { |item| puts item }
{'a' => 1, 'b' => 2}.my_each { |k, v| puts "#{k}, #{v}"}
puts ''

arr.each { |item| puts item }
{'a' => 1, 'b' => 2}.each { |k, v| puts "#{k}, #{v}"}
puts ''

# my_each_with_index vs each_with_index
puts "-------- #my_each_with_index vs #each_with_index --------"
arr.my_each_with_index { |item, index| puts "item: #{item}, index: #{index}" }
puts ''

arr.each_with_index { |item, index| puts "item: #{item}, index: #{index}" }
puts ''

# my_select vs select
puts "-------- #my_select vs #select --------"
p arr.my_select { |item| item.odd? }
p arr.select { |item| item.odd? }
p hash.my_select { |k, v| v > 1 }
p hash.select { |k, v| v > 1 }
puts ''
