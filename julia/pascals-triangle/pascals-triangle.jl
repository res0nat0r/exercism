function triangle(n)
  pascal = []

  for line in 0:(n-1)
    internal = []
    for row in 0:(n-1)
      for col in 0:(n-1)
        append!(internal, binomial(row, col))
      end
    end
    append!(pascal, internal)
  end

  return pascal
end
