###########################
#### LOOPS & ITERATORS ####
###########################

def count_spaces str
  count = 0
  str.each_char do |char|
    if char === " "
      count += 1
    end
  end
  count
end

def string_lengths arr
  ans = []
  arr.each do |str|
    ans.push str.length
  end
  ans
end

def remove_falsy_values list
  list.find_all {|item| item}
end
#exclude_last
  # takes in an array or string
  # removes the last item from the array or string
  # returns it
def exclude_last list
  list[0..-2]
end
#exclude_first
  # takes in an array or string
  # removes the first item from an array
  # removes the first character from a string
  # returns a new string - does not alter the original input (non-destructive)
def exclude_first list
  list[1..-1]
end
#exclude_ends
  # takes in an array or string
  # removes the first and last items from an array
  # removes the first and last characters from a string
def exclude_ends list
  list[1..-2]
end
#select_every_even
  # takes in an array
  # returns a list of even-indexed items from the input
def select_every_even arr
  ans = []
  arr.each_with_index do |item, i|
    if i%2 == 0 
      ans.push item
    end
  end
  ans
end
#select_every_odd
  # takes in an array
  # returns a list of odd-indexed items
def select_every_odd arr
  ans = []
  arr.each_with_index do |item, i|
    if i%2 == 1 
      ans.push item
    end
  end
  ans
end
#select_every_n
  # takes in an array
  # returns a list of items at an index evenly divisible by n
  # defaults to an n value of 1
def select_every_n arr, n=1
  ans = []
  arr.each_with_index do |item, i|
    ans.push item if i%n == 0
  end
  ans
end
## STRETCH ##
#compile_agenda
  # converts a list of agenda items into a single string
  # titles start with a bullet ("*") and are separated by line breaks ("/n")
  # sorts items by priority ascending (low to high) by default
  # sort order can (optionally) be changed to priority descending
  # the bullet can (optionally) be changed to any symbol
def compile_agenda list, order="", symbol="*"  
  list.sort_by! {|x| x[:priority]}
  if order == "ASC"
    list.reverse!
  end
  agenda = ""
  list.each do |todo|
    if todo == list[-1]
      agenda << "#{symbol} #{todo[:title]}"
    else
      agenda << "#{symbol} #{todo[:title]}\n"
    end
  end
  agenda
end


