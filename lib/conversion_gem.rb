def calculation_type
  puts "Type 1 for cm to inches, 2 for inches to cm, 3 for meters to feet, or 4 for feet to meters"
  conversion_type = gets.to_i

  if conversion_type == 1
    "cm to in"
  elsif conversion_type == 2
    "in to cm"
  elsif converion_type == 3
    "m to ft"
  elsif conversion_type == 4
    "ft to m"
  else
    "Value not available. Please select a viable option"
  end
end


def calculation(convert, value)

  if convert == "cm to in"
    return result = value / 2.54
    
  elsif convert == "in to cm"
    return result = value * 2.54

  elsif convert == "m to ft"
    return result = value * 3.28

  elsif convert == "ft to m"
    return result == value / 3.28

  else
    return "Oops look like that was an error. Please enter another value"
  end
end
