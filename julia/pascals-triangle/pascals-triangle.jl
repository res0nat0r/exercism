function triangle(n)
  pascal = []

  for row in 0:n
    for col in 0:n
      append!(pascal, [row, col])
    end
  end

  return pascal
end
