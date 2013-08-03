# Calculates the Fibonacci up to the nth number
# Params
# +input+:: input for up to nth
def calculatefib(input)
  old = 0
  cur = 1
  i = 1
  yield old
  yield cur

  while i < Integer(input)
    cur, old, i = cur+old, cur, i + 1
    yield cur
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
while !valid
  puts "Enter a number to generate the Fibonacci sequence to that:\n"
  input = gets.chomp
  if is_numeric?(input)
    valid = true
    calculatefib(Integer(input)-1) {|f| print f; print " "; $stdout.flush}
  end
end
