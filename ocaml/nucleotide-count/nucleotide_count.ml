(*
Given a string representing a DNA sequence, count how many of each nucleotide
is present. If the string contains characters that aren't A, C, G, or T then it
is invalid and you should signal an error.

For example:

"GATTACA" -> 'A': 3, 'C': 1, 'G': 1, 'T': 2
"INVALID" -> error
*)

open Base

let empty = Map.empty (module Char)

let count_nucleotide s c = Ok (String.to_list s |> List.count ~f:(fun f -> phys_equal f c))

let count_nucleotides s =
  List.map ~f:(fun f -> count_nucleotide s f) ['A'; 'C'; 'G'; 'T']