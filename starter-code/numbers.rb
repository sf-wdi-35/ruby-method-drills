##############################
#### MANIPULATING NUMBERS ####
##############################
def count_to num
  if num > 0
    (0..num).to_a
  else 
    0.downto(num).to_a
  end
end

def is_integer?(num)
  num.class == Fixnum || num.class == Bignum || 
  ( num.is_a?(Float) && !num.nan? && num.to_i == num )
end

def is_prime? num
  if num <= 1 && !is_integer?(num)
    false
  end

  i = 2
  while i < num
    if num % i == 0 
      false
    else
      true
    end
    i += 1
  end
  
end

def primes_less_than num
  i = 2
  arr = []
  while i < num
    if is_prime? == true
      arr << num
    end
    i += 1
  end
end
  # takes in a number
  # returns an empty array if there are no primes below num
  # does not return the number itself
  # finds all primes less than the given number

## STRETCH ##
#iterative_factorial
  # takes in a number
  # returns 1 for 0 and 1
  # returns NaN for numbers less than 0
  # returns NaN for non-integers
  # calculates and returns the factorial of the input number
