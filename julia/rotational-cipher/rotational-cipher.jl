function rotate_old(offset, letter)
  plain = collect('a':'z')
  shifted = circshift(plain, -offset)
  output = ""
  loc = findall(x -> x == only(letter), plain) |> first
  result =  shifted[loc] |> first

  if typeof(letter) == String
    return string(shifted[loc] |> first)
  else
    return shifted[loc] |> first
  end
end


function rotate(offset, input)
  plain = collect('a':'z')
  cipher = circshift(plain, -offset)
  output = "" 
  upcase = 0

  for i in input
    i = only(i)
    loc = findall(x -> x == i, plain) |> first
    
    if i in cipher
      output = output * cipher[loc]
    else
      output = output * i
    end
  end

    return output
end

rotate(13, "m")
rotate(5, "O M G")