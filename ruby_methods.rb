# 1.Write a method called p_times that takes a statement and a num
# puts the statement some num of times to the console.

# 1-define method name and its (parameters)
def p_times (statement,num)
  puts statement * num # 3-insert logic which is asking to put statement num of times (2 ways to do it based on vague questions)
end # 2-stub out function (def, end)
p_times("hello",5) # 4-call the method with specified parameters


# or

def p_times (statement, num)
    num.times do |i|
      puts statement
    end
end
p_times("hello",5)


# 2.Write a method called letter_count to count letter occurrence in a string,
# returned as a Hash. For example, letter_count 'apple' would return
# {"a"=>1, "p"=>2, "l"=>1, "e"=>1}
def letter_count (string)
  puts string.scan(/\w/).inject(Hash.new(0)){|a,b| a[b] += 1; a}
end
letter_count("apple")

# 3.Write a method called mock_me that gets some input from the terminal and
# puts it until the users type quit or q in the terminal.
# (Be sure to remove trailing \n.)

def mock_me (input)
  puts "Please input some words"
  input = gets.chomp
    while input == input
      puts input
      system("stty raw -echo")
        char = STDIN.read_nonblock(1) rescue nil
          system("stty -raw echo")
            break if /q/i =~ char
              sleep(2)
    end
end
mock_me ("input")
