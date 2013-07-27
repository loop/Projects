#!/usr/bin/env ruby

# Prints out PI up to a certain number of digits.
# There is problem at the moment due to the Math::PI constant.
# A algorithm must be implemented to get Pi of a bigger length.
# Params:
# +limit+:: number of digits of Pi

def pi(limit)
  pi =  Math::PI.to_s
  newlimit = Integer(limit) + 1
  puts pi[0,newlimit]
end

def is_numeric?(s)
  begin
    Float(s)
  rescue
    false # not numeric
  else
    true # numeric
  end
end


valid = false
while valid == false do
  puts "Enter the number of digits of PI you want to be shown.\n"
  input = gets.chomp
  if is_numeric?(input) == true
    valid = true
    pi(input)
  end
end
