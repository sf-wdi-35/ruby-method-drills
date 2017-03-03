#########################
#### USING ARGUMENTS ####
#########################
def say_hello
  'hello'
end

def echo str
  str
end 

def eddie_izzards_height (heel=0)
  67 + heel
end

def how_many_args (*args)
  args.length
end 

def find_answer keyword = {}
	keyword[:answer]
end
  # returns the value associated with the 'answer' keyword argument
  # returns nil if it cannot find the 'answer' keyword argument
  # complains when given non-keyword arguments
  # Hint: google ruby keyword arguments
