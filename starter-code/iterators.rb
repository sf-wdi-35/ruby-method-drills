###########################
#### LOOPS & ITERATORS ####
###########################
def count_spaces(string)
  spaces = 0
  space = " "
  string.each_char do |thing|
    if thing == space
      spaces += 1
    end
  end
  spaces
end

def string_lengths(strarr)
  strarr.map {|n| n.length }
end

def remove_falsy_values(nofalse)
  # nofalse.reject {|thing| !!thing}
  nofalse.select {|thing| !!thing}
end

def exclude_last(str)
  # str.pop
  # str
  str[0..-2]
end

def exclude_first(str)
  # str.shift
  # str
  str[1..-1]
end

def exclude_ends(str)
  # str.pop
  # str.shift
  # str
  str[1..-2]
end

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
