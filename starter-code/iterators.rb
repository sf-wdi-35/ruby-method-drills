###########################
#### LOOPS & ITERATORS ####
###########################
def count_spaces word
  counter = 0
  space = " "
  word.each_char do |letter|
    if letter == space
      counter +=1
    end
  end
  counter
  # takes in a string
  # counts the spaces in a string
  # returns number of spaces
end

def string_lengths arr_of_strings
  arr_of_strings.each_with_index do |str, index|
    arr_of_strings[index] = str.length
  end
  arr_of_strings
  # takes in an array of strings
  # returns an array containing the lengths of the strings
end

def remove_falsy_values arr
  arr.select do |val|
    !!val
  end
  # takes in a list
  # filters out falsy values from a list
  # returns the updated list
end

def exclude_last enume
  enume[0..-2]
  # takes in an array or string
  # removes the last item from the array or string
  # returns it
end

def exclude_first enume
  enume[1..-1]
  # takes in an array or string
  # removes the first item from an array
  # removes the first character from a string
  # returns a new string - does not alter the original input (non-destructive)
end

def exclude_ends enume
  enume[1..-2]
  # takes in an array or string
  # removes the first and last items from an array
  # removes the first and last characters from a string
end

def select_every_even arr
  arr.select.with_index do |val, index|
    val if index.even?
  end
  # takes in an array
  # returns a list of even-indexed items from the input
end

def select_every_odd arr
  arr.select.with_index do |val,index|
    val if index.odd?
  end
  # takes in an array
  # returns a list of odd-indexed items
end

def select_every_n arr, n=1
  arr.select.with_index do |val, index|
    val if index%n ==0
  end
  # takes in an array
  # returns a list of items at an index evenly divisible by n
  # defaults to an n value of 1
end
## STRETCH ##
#compile_agenda
  # converts a list of agenda items into a single string
  # titles start with a bullet ("*") and are separated by line breaks ("/n")
  # sorts items by priority ascending (low to high) by default
  # sort order can (optionally) be changed to priority descending
  # the bullet can (optionally) be changed to any symbol
