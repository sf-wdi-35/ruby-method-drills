#########################
#### USING ARGUMENTS ####
#########################
def say_hello
  return 'hello'
end

def echo input
  return input
end

def eddie_izzards_height(heel_height=0)
  base_height = 67
  new_height = base_height + heel_height
  return new_height
end

def how_many_args(*args)
  return (args).length
end

def find_answer(keyword={})
  keyword[:answer]
  # returns the value associated with the 'answer' keyword argument
  # returns nil if it cannot find the 'answer' keyword argument
  # complains when given non-keyword arguments
  # Hint: google ruby keyword arguments
end
