function rotate(offset, letter)
  plain = collect('a':'z')
  shifted = circshift(plain, -offset)
  loc = findall(x -> x == only(letter), plain) |> first

  if typeof(letter) == String
    return string(shifted[loc] |> first)
  else
    return shifted[loc] |> first
  end
end