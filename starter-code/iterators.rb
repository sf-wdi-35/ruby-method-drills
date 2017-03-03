###########################
#### LOOPS & ITERATORS ####
###########################

# Count Spaces
def count_spaces(str)
  count = 0
  space = " "
  str.each_char do |char|
    if char == space
      count+=1
    end
  end
  count
end

# String Lengths
def string_lengths(arr)
  arr.map {|str| str.length}
end

# Remove Falsys
def remove_falsy_values(list)
  list.select { |item| !!item }
end

def exclude_last(input)
  input[0..-2]
end

def exclude_first(input)
  input[1..-1]
end

def exclude_ends(input)
  input[1..-2]
end

def select_every_even(arr)
  arr.select.with_index { |item, index| item if index.even? }
end

def select_every_odd(arr)
  arr.select.with_index { |item, index| item if index.odd? }
end

def select_every_n(arr, n=1)
  arr.select.with_index { |item, index| item if index%n == 0 }
end

## STRETCH ##
#compile_agenda
  # converts a list of agenda items into a single string
  # titles start with a bullet ("*") and are separated by line breaks ("/n")
  # sorts items by priority ascending (low to high) by default
  # sort order can (optionally) be changed to priority descending
  # the bullet can (optionally) be changed to any symbol
