type nucleotide = A | C | G | T

let hamming_distance _ _ =
  failwith "'hamming_distance' is missing"





(*
function distance(a, b)
  hamming = 0

  if length(a) != length(b)
    throw(ArgumentError("Invalid length"))
  end

  for i in 1:length(a)
    if a[i] != b[i]
      hamming += 1
    end
  end

  return hamming
end
*)