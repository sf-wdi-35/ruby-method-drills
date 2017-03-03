##############################
#### MANIPULATING NUMBERS ####
##############################

# tested this in irb and it works for both negative and positive integers, but the test says it is returning nil
def count_to n
  num_arr = []

  if n >= 0
    (0..n).each do |i|
      num_arr.push(i)
    end
  # else n < 0
  #   (n..0).each do |i|
  #   num_arr << i
    num_arr
  end
end


# def is_integer?(num)
#   num.class == Fixnum || num.class == Bignum ||
#     ( num.is_a?(Float) && !num.nan? && num.to_i == num )
# end


def is_integer? n
  if (n.class == Fixnum || Bignum) || (n.is_a?(Float) && !n.nan? && n.to_i == n)
    return true
  else
    return false
  end
end

def end
  # takes in a number
  # returns true for Fixnums and Bignums (whole number or 'integer' types)
  # returns true for Floats (decimals) equal to integers
  # returns false for non-integer decimals
  # returns false for Float::NAN
  # returns false for non-numbers
end

#is_prime?
  # takes in a number and checks if it's prime
  # returns false for non-integer decimals
  # returns false for numbers less than or equal to 1
  # returns false for numbers divisible by anything but 1 and themselves
  # returns true for prime numbers
  # Hint: google prime numbers!

#primes_less_than
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

