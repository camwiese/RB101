require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')
LANGUAGE = 'en'

def messages(message, lang='en')
  MESSAGES[lang][message]
end

def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  num.to_i.to_s == num
end

def float?(num)
  num.to_f.to_s == num
end

def number?(num)
  valid_number?(num) || float?(num)
end

def operation_to_message(op)
  message = case op
            when '1'
              'adding'
            when '2'
              'subtracting'
            when '3'
              'multipying'
            when '4'
              'dividing'
            end
  x = "local but unused variable"

  message

end
prompt(messages('welcome'))

name = ''

loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt(messages('valid_name'))
  else
    prompt("Hi #{name}")
    break
  end
end

# main loop.
loop do
  number1 = ''

  loop do
    prompt(messages('first_num'))
    number1 = Kernel.gets().chomp()

    if valid_number?(number1)
      break
    else
      prompt(messages('invalid'))
    end
  end

  number2 = ''
  loop do
    prompt(messages('second_num'))
    number2 = Kernel.gets().chomp()
    if valid_number?(number2)
      break
    else
      prompt(messages('invalid'))
    end
  end

  operator = ''

  operator_prompt = <<-MSG
  What operation would you like to perform?
  1) add
  2) subtract
  3) multiply
  4) divide
  MSG

  loop do
    prompt(operator_prompt)
    operator = Kernel.gets().chomp()
    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(messages('invalid_number'))
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers..")

  result = case operator
           when '1'
             number1.to_i + number2.to_i
           when '2'
             number1.to_i - number2.to_i
           when '3'
             number1.to_i * number2.to_i()
           when '4'
             number1.to_f / number2.to_f
           end

  prompt("The result is #{result}")
  prompt(messages('result'))
  answer = Kernel.gets().chomp()
  break unless answer.downcase.start_with?('y')
end

prompt(messages('thanks'))
