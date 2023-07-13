#const rows = [[1], [1, 1], [1, 2, 1], [1, 3, 3, 1], [1, 4, 6, 4, 1], [1, 5, 10, 10, 5, 1], [1, 6, 15, 20, 15, 6, 1], [1, 7, 21, 35, 35, 21, 7, 1], [1, 8, 28, 56, 70, 56, 28, 8, 1], [1, 9, 36, 84, 126, 126, 84, 36, 9, 1]]


# Pascal's triangle formula is (n+1)C(r) = (n)C(r - 1) + (n)C(r). It means that
# the number of ways to choose r items out of a total of n + 1 items is the same
# as adding the number of ways to choose r - 1 items out of a total of n items
# and the number of ways to choose r items out of a total of n items.

# pCq =pCq-1 + p-1Cq-1 

# function triangle(n)
#   pascal = []
#   max = 0

#   while max <= n
#       list = []
#     for row = 0:max
#       append!(list, (binomial(max, row)))
#     end
#     print(list)
#     print("\n")
#     push!(pascal, list)
#     max += 1
#   end
#   print(pascal)
# end

function triangle(n)
  pascal = []
  max = 0

  while max < n
      list = []
    for row = 0:max
      append!(list, (binomial(max, row)))
    end
    push!(pascal, list)
    max += 1
  end
  return pascal
end