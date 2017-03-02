###########################
#### LOOPS & ITERATORS ####
###########################
#count_spaces
  # takes in a string
  # counts the spaces in a string
  # returns number of spaces
def count_spaces(word)
    word.count(" ")
end

#string_lengths
  # takes in an array of strings
  # returns an array containing the lengths of the strings
def string_lengths(words)
  words.map {|word| word.length}
end

#remove_falsy_values
  # takes in a list
  # filters out falsy values from a list
  # returns the updated list
def remove_falsy_values(list)
  list.delete_if{ |val| val == false or val == nil}
end

#exclude_last
  # takes in an array or string
  # removes the last item from the array or string
  # returns it
def exclude_last(param)
  param.slice!(-1)
  param
end

#exclude_first
  # takes in an array or string
  # removes the first item from an array
  # removes the first character from a string
  # returns a new string - does not alter the original input (non-destructive)
def exclude_first(param)
  param[1, param.length]
end

#exclude_ends
  # takes in an array or string
  # removes the first and last items from an array
  # removes the first and last characters from a string
def exclude_ends(param)
  param.slice!(0)
  param.slice!(-1)
  param
end

#select_every_even
  # takes in an array
  # returns a list of even-indexed items from the input
def select_every_even(array)
  array.values_at(* array.each_index.select {|index| index.even?})
end

#select_every_odd
  # takes in an array
  # returns a list of odd-indexed items
def select_every_odd(array)
  array.values_at(* array.each_index.select {|index| index.odd?})
end

#select_every_n
  # takes in an array
  # returns a list of items at an index evenly divisible by n
  # defaults to an n value of 1
def select_every_n(array, n=1)
  array.values_at(* array.each_index.select {|index| index%n==0})
end

## STRETCH ##
#compile_agenda
  # converts a list of agenda items into a single string
  # titles start with a bullet ("*") and are separated by line breaks ("/n")
  # sorts items by priority ascending (low to high) by default
  # sort order can (optionally) be changed to priority descending
  # the bullet can (optionally) be changed to any symbol
def compile_agenda(array, order="DSC", bullet="*")
  if order=="ASC"
    new_array = array.sort{|a,b| b[:priority] <=> a[:priority]}
  else
    new_array = array.sort{|a,b| a[:priority]<=> b[:priority]}
  end
  new_array = new_array.map{|a| a[:title]}
  new_array.map{|a| "#{bullet} " + a}.join("\n")
end
