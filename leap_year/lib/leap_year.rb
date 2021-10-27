def leap_year?(number)
  if number % 400 == 0
    true
  elsif number % 100 == 0
    false
  elsif number % 4 == 0
    true
  else
    false
  end
end