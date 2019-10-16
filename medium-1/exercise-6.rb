def n(n, _stack)
  register = n.to_i
end

def PUSH(register, stack)
  stack.push(register)
end

def ADD(register, stack)
  stack.pop().to_i + register.to_i
end

def SUB(register, stack)
  register.to_i - stack.pop().to_i
end

def MULT(register, stack)
  stack.pop().to_i * register.to_i
end

def DIV(register, stack)
  register.to_i / stack.pop().to_i
end

def MOD(register, stack)
  register.to_i % stack.pop().to_i
end

def POP(_register, stack)
  stack.pop().to_i
end

def PRINT(register, _stack)
  puts register.to_i
end

def minilang(string)
  register = 0
  stack = []

  string.split.each do |word|
    
    case word

    when "PRINT"
      PRINT(register, stack)
    when "PUSH"
      stack = PUSH(register, stack)
    when "ADD"
      register = ADD(register, stack)
    when "SUB"
      register = SUB(register, stack)
    when "MULT"
      register = MULT(register, stack)
    when "DIV"
      register = DIV(register, stack)
    when "MOD"
      register = MOD(register, stack)
    when "POP"
      register = POP(register, stack)
    else
      register = word
    end
  end
end


# minilang('PRINT')
# # 0

# minilang('5 PUSH 3 MULT PRINT')
# # 15

# minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# # 5
# # 3
# # 8

# minilang('5 PUSH POP PRINT')
# # 5

# minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# # 5
# # 10
# # 4
# # 7

# minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# # 6

# minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

minilang('-3 PUSH 5 SUB PRINT')
# 8

# minilang('6 PUSH')
# # (nothing printed; no PRINT commands)
