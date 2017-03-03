#########################
#### USING ARGUMENTS ####
#########################
def say_hello
'hello'
end

def echo input
  input
end

def eddie_izzards_height height=0
  height + 67
end

def how_many_args *args
  args.count

end 

def find_answer args={}
  args[:answer]
end 