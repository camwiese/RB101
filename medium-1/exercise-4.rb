def toggle(num, hash)
  if hash[num] == true
    hash[num] = false
  else
    hash[num] = true
  end
end 

def lights(num_lights)
  lights = {}
  (1..num_lights).each do |num|
    lights[num] = false
  end
  # Flip the lights
  multiple = 1

  loop do
    lights.each do |num, state|
      if num % multiple == 0
        toggle(num, lights)
      end
    end
    break if multiple >= num_lights
    multiple += 1
  end
  
  # return array of true
  output = []

  lights.each do |key, value|
    if value == true
      output << key
    end
  end
  output
end

p lights(10)