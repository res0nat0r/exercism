function encode(input)
  input = lowercase(input)
  plain = "abcdefghijklmnopqrstuvwxyz"
  cipher = "zyxwvutsrqponmlkjihgfedcba"
  output = ""
  output_cipher = ""
  lookup = Dict(zip(plain, cipher))
  re = r"[a-z]"

  for m in eachmatch(re, input)
    output = string(output, m.match)
  end

  for i in output
    output_cipher = string(output_cipher, lookup[i])
  end

  return output_cipher

end
