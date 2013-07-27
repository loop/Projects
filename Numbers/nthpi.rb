#!/usr/bin/env ruby

# Prints out PI up to a certain number of digits.
# A algorithm must be implemented to get Pi of a bigger length.
# Params:
# +limit+:: number of digits of Pi
def pi(input)
  q, r, t, k, n, l = 1, 0, 1, 1, 3, 3
  decimal_point = nil
  limit_value = Integer(input)
  counter = 0
  while counter != limit_value+1
    if q*4+r-t < n*t
      yield n
      if decimal_point.nil?
        yield '.'
        decimal_point = '.'
      end
      counter += 1
      nr = 10*(r-n*t)
      n = ((10*(3*q+r)) / t) - 10*n
      q *= 10
      r = nr
    else
      nr = (2*q+r) * l
      nn = (q*(7*k+2)+r*l) / (t*l)
      q *= k
      t *= l
      l += 2
      k += 1
      n = nn
      r = nr
    end
  end
  if(counter == limit_value+1)
    puts "\n"
  end
end

# Checks if a string is a number.
# Params:
# +s+:: string to check
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
  if is_numeric?(input)
    valid = true
    pi(input) {|digit| print digit; $stdout.flush}
  end
end
