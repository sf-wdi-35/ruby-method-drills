########################
### USING ARGUMENTS ####
########################

def say_hello
   "hello"
 end

def echo(str)
  str
end

def eddie_izzards_height(heel_height=0)
  base = 67
  base + heel_height
end

def how_many_args(*args)
  args.count
end


def find_answer(kwargs={})
  kwargs[:answer]
end
