"""
    count_nucleotides(strand)

The frequency of each nucleotide within `strand` as a dictionary.

Invalid strands raise a `DomainError`.

"""
function count_nucleotides(strand)
  dna = Dict('A'=>0,'C'=>0,'G'=>0,'T'=>0)

  for i in strand
    try
      dna[i] += 1
    catch
      throw(DomainError("Invalid Key"))
    end
  end

  return dna
end
