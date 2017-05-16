# LOOPING
# 1.Write a method called p_times that takes a statement and a num
# puts the statement some num of times to the console.

# 1-define method name and its (parameters)
def p_times (statement,num)
  puts statement * num # 3-insert logic which is asking to put statement num of times (2 ways to do it based on vague questions)
end # 2-stub out function (def, end)
p_times("hello",5) # 4-call the method with specified parameters


# or show statement on seperate lines using loop
def p_times (statement, num)
    num.times do |i| # loop for number of times |i|
      puts statement # print statement on new row until loop has run num times
    end
end
p_times("hello",5)


# 2.Write a method called letter_count to count letter occurrence in a string,
# returned as a Hash. For example, letter_count 'apple' would return
# {"a"=>1, "p"=>2, "l"=>1, "e"=>1}
def letter_count (string)
  puts string.scan(/\w/).inject(Hash.new(0)){|a,b| a[b] += 1; a} # scan string for words (upper or lowercase); inject into hash looped through letters and associated count numbers
end
letter_count("apple")

# 3.Write a method called mock_me that gets some input from the terminal and
# puts it until the users type quit or q in the terminal.
# (Be sure to remove trailing \n.)
def mock_me (input)
  puts "Please input some words" # printing request for input
  input = gets.chomp # gets input from user
    while input == input # loop: while input is what the user has input
      puts input # keep printing input
      system("stty raw -echo") # checks system for necessary things to read key press
        char = STDIN.read_nonblock(1) rescue nil
          system("stty -raw echo")
            break if /q/i =~ char # stops code if user hits character of q or i
              sleep(2) # stops after 2 minutes
    end
end
mock_me ("input")

# 4.Write a method called print_contacts that takes a hash of
# name and phone-number key-value pairs and puts the name and phone-number
# for each contact.
def print_contacts (contact)
  contact.each do |name,phone|
    puts name, phone
  end
end
contact_hash = {'Julie' => '323-444-5454', 'Jeff' => '626-444-0545'}
print_contacts(contact_hash)


# ARRAY map
# 1.Write a method called multiply_by that takes a number and an array
# returns an array of numbers multiplied by that number.
def multiply_by (n,array) # define method: name and parameters (number, array)
  array.map do |i| # define what needs to be mapped to each array item
    i * n # loop through array and multiply number and array item
  end
end
puts multiply_by(2,[3,4,6,7,11,22])

# METHODS
# 1.Write a method to compute the factorial of a number.
def factorial (n)
  if n == 0 or n == 1 # basecase return 1
    1
  else
    n * factorial(n-1) # definition of factorial n*(n-1)
  end
end
puts factorial(10)

# 2.Write a method to check if a number is a palindrome.
def palindrome? (number)
  string = number.to_s
  string == string.reverse
end
puts palindrome?(5005)
puts palindrome?(324534)
