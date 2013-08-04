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

def find_prime_factors
  #Todo
end