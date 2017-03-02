##############################
#### MANIPULATING NUMBERS ####
##############################
#count_to
  # takes in a number
  # returns an array containing every integer from 0 to n
  # counts up or down
  # rounds off decimals
def count_to(number)
  if number < 0
    number = number.ceil
    (number..0).to_a.reverse
  else
    number = number.floor
    (0..number).to_a
  end
end

#is_integer?
  # takes in a number
  # returns true for Fixnums and Bignums (whole number or 'integer' types)
  # returns true for Floats (decimals) equal to integers
  # returns false for non-integer decimals
  # returns false for Float::NAN
  # returns false for non-numbers
def is_integer?(number)
  if number.is_a?String or number == nil
    false
  elsif number.is_a?Integer or (not number.to_f.nan? and number.ceil==number.floor)
    true
  else
    false
  end
end

#is_prime?
  # takes in a number and checks if it's prime
  # returns false for non-integer decimals
  # returns false for numbers less than or equal to 1
  # returns false for numbers divisible by anything but 1 and themselves
  # returns true for prime numbers
  # Hint: google prime numbers!
def is_prime?(number)
  if not number.is_a?Integer or number<=1
    return false
  end
  for num in 2..(number - 1)
   if (number % num) == 0
    return false
   end
  end
  true
 end

#primes_less_than
  # takes in a number
  # returns an empty array if there are no primes below num
  # does not return the number itself
  # finds all primes less than the given number
def primes_less_than(number)
  arr = []
  for num in 2..(number-1)
   if is_prime?(num)
    arr.push(num)
   end
  end
  arr
end

## STRETCH ##
#iterative_factorial
  # takes in a number
  # returns 1 for 0 and 1
  # returns NaN for numbers less than 0
  # returns NaN for non-integers
  # calculates and returns the factorial of the input number
def iterative_factorial(number)
  if number==0 or number==1
    return 1
  elsif number<0 or not number.is_a?Integer
    return Float::NAN
  else
    (1..number).inject(:*)
  end
end
