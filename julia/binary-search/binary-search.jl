function binarysearch(array, value)
  l = 0
  r = length(array - 1)

  while l <= r
    m = floor( (l + r) / 2 )
    if array[m] < value
      l = m + 1
    elseif array[m] > value
      r = m - 1
    else
      return m
    end
  end

  return []
end
