# def recurse(depth)
#   if depth > 0
#     puts "Spiraling down... #{depth}"
#     recurse(depth - 1)
#     puts "Spiraling up... #{depth - 1}"
#   else
#     puts "Bottom of the rabbit hole #{depth}"
#   end
# end

#
# recurse (5)

# def process_number(n=3)
#   p 'processing your number'
#   yield(n)
#   p 'all done!'
# end
#
# process_number 5 do |i| # prints an array 0 to 5
#   p (0..i).to_a
# end
#
#
# process_number do |k| # prints a number of k * 3; k = n (no parameter so default is 3); 3 * 2 if n = 3
#   p k * 2
# end


foo = 1

# def do_stuff
#   foo = 1
#   foo += 1
#   bar = 1
#   puts foo # 1 + 1
#   puts bar # 1
# end
#
# do_stuff # prints 2 and then 1 on next line
#
# puts foo # returns 1 because of outside variable foo = 1
# puts bar # returns nil (not defined)
#
def do_stuff2(x)
  foo = x # foot = foo = 1
  foo += 1
  bar = 1
  puts foo # 1 + 1
  puts bar # 1
end

puts do_stuff2(foo) # does not return anything (undefined)
