function raindrops(number)
  result = "" 

  if mod(number, 3) == 0
    result = result * "Pling"
  elseif mod(number, 5) == 0
    result = result * "Plang"
  elseif mod(number, 7) == 0
    result = result * "Plong"
  else
    result = string(result)
  end

  return result
end
