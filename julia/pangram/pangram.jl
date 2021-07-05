function ispangram(input)
  seen = Dict()
  r = r"[a-z]"

  for i in input
    seen[lowercase(i)] = 1
  end

  if length(collect(eachmatch(r,join(keys(seen))))) == 26
    return true
  else
    return false
  end
end
