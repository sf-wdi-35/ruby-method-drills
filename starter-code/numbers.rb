##############################
#### MANIPULATING NUMBERS ####
##############################
#count_to
  # takes in a number
  # returns an array containing every integer from 0 to n
  # counts up or down
  # rounds off decimals
def count_to num
  ans = []
  if num >= 0
    0.upto(num.floor) {|i| ans.push(i)} 
  else
    0.downto(num.ceil) {|i| ans.push(i)}
  end
  ans
end

#is_integer?
  # takes in a number
  # returns true for Fixnums and Bignums (whole number or 'integer' types)
  # returns true for Floats (decimals) equal to integers
  # returns false for non-integer decimals
  # returns false for Float::NAN
  # returns false for non-numbers
def is_integer? num
  # return false if num.class != Integer || num.class != Float
  return false if num == nil
  return num % 1 == 0
end
#is_prime?
  # takes in a number and checks if it's prime
  # returns false for non-integer decimals
  # returns false for numbers less than or equal to 1
  # returns false for numbers divisible by anything but 1 and themselves
  # returns true for prime numbers
  # Hint: google prime numbers!
def is_prime? num
  return false if num % 1 != 0 || num <= 1
  (2).upto(num -1) do |i|
    return false if num % i == 0
  end
  return true
end

#primes_less_than
  # takes in a number
  # returns an empty array if there are no primes below num
  # does not return the number itself
  # finds all primes less than the given number
def primes_less_than num
  ans = []
  (2).upto(num-1) do |n|
    if is_prime?(n)
      ans.push n
    end
  end
  ans
end
## STRETCH ##
#iterative_factorial
  # takes in a number
  # returns 1 for 0 and 1
  # returns NaN for numbers less than 0
  # returns NaN for non-integers
  # calculates and returns the factorial of the input number
def iterative_factorial num
  return 1 if num == 0 || num == 1
  return Float::NAN if num < 0 || num % 1 != 0
  ans = 1
  num.downto(2) do |n|
    ans = ans * n
  end
  ans
end

