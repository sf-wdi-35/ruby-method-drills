###########################
#### LOOPS & ITERATORS ####
###########################
def count_spaces str
  count = 0
  str.split("").each do |val|
    if val == " "
      count += 1
    end
    count
  end
end

def string_lengths arr
  arr.map do |str|
    str.length
  end
end
  
def remove_falsy_values arr
  arr.select do |val|
    !!val
  end
end

def exclude_last arr
  arr[0..-2]
end
#   arr.pop
#   arr
# end
  # takes in an array or string
  # removes the last item from the array or string
  # returns it

def exclude_first arr
  arr[1..-1]
end
#   arr.shift
#   arr
# end
  # takes in an array or string
  # removes the first item from an array
  # removes the first character from a string
  # returns a new string - does not alter the original input (non-destructive)

def exclude_ends arr
  arr[1..-2]
end
  # takes in an array or string
  # removes the first and last items from an array
  # removes the first and last characters from a string

def select_every_even arr
  arr.select.with_index do |val, idx| 
    val if idx.even? == true 
  end
end
  
def select_every_odd arr
  arr.select.with_index do |val, idx| 
    val if idx.odd? == true 
  end
end

def select_every_n arr, n=1
  arr.select.with_index do |val, idx| 
    val if idx % n == 0
  end
end

## STRETCH ##
#compile_agenda
  # converts a list of agenda items into a single string
  # titles start with a bullet ("*") and are separated by line breaks ("/n")
  # sorts items by priority ascending (low to high) by default
  # sort order can (optionally) be changed to priority descending
  # the bullet can (optionally) be changed to any symbol
