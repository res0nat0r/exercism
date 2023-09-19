function raindrops(number)
  result = ""
  modified = 0

  if mod(number, 3) == 0
    result = result * "Pling"
    modified = 1
  end
  if  mod(number, 5) == 0
    result = result * "Plang"
    modified = 1
  end
  if mod(number, 7) == 0
    result = result * "Plong"
    modified = 1
  end

  if modified == 1
    return result
  else
    return string(number)
  end
end
