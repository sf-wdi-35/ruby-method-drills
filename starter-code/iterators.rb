###########################
#### LOOPS & ITERATORS ####
###########################
def count_spaces str
  space_count = 0
  str.
  str_arr.each do |c|
    if c == " "
      space_count += 1
    end
    return space_count

#   if str.include?(" ")
#     str_arr = str.split(" ")
#   # takes in a string
#   # counts the spaces in a string
#   # returns number of spaces
  end
 end

def string_lengths arr
  str_length_arr = []
  for arr.each { |str| p "str"}
    # str_length_arr.push(str.length)
  return str_length_arr
#   # takes in an array of strings
#   # returns an array containing the lengths of the strings
end

#remove_falsy_values
  # takes in a list
  # filters out falsy values from a list
  # returns the updated list

#exclude_last
  # takes in an array or string
  # removes the last item from the array or string
  # returns it

#exclude_first
  # takes in an array or string
  # removes the first item from an array
  # removes the first character from a string
  # returns a new string - does not alter the original input (non-destructive)

#exclude_ends
  # takes in an array or string
  # removes the first and last items from an array
  # removes the first and last characters from a string

#select_every_even
  # takes in an array
  # returns a list of even-indexed items from the input

#select_every_odd
  # takes in an array
  # returns a list of odd-indexed items

#select_every_n
  # takes in an array
  # returns a list of items at an index evenly divisible by n
  # defaults to an n value of 1

## STRETCH ##
#compile_agenda
  # converts a list of agenda items into a single string
  # titles start with a bullet ("*") and are separated by line breaks ("/n")
  # sorts items by priority ascending (low to high) by default
  # sort order can (optionally) be changed to priority descending
  # the bullet can (optionally) be changed to any symbol
