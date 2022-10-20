(*
Calculate the Hamming Distance between two DNA strands.

Your body is made up of cells that contain DNA. Those cells regularly wear out
and need replacing, which they achieve by dividing into daughter cells. In fact,
the average human body experiences about 10 quadrillion cell divisions in a
lifetime!

When cells divide, their DNA replicates too. Sometimes during this process
mistakes happen and single pieces of DNA get encoded with the incorrect
information. If we compare two strands of DNA and count the differences between
them we can see how many mistakes occurred. This is known as the "Hamming
Distance".

We read DNA using the letters C,A,G and T. Two strands might look like this:

GAGCCTACTAACGGGAT
CATCGTAATGACGGCCT
^ ^ ^  ^ ^    ^^

They have 7 differences, and therefore the Hamming Distance is 7.
*)

open Base

type nucleotide = A | C | G | T

(* let dna_of_string s =
  let f = function
    | 'A' -> A
    | 'C' -> C
    | 'G' -> G
    | 'T' -> T
    | _ -> failwith "Big news! New nucleotide discovered"
  in
  String.to_list s |> List.map ~f *)

let hamming_distance l r =
  List.map2_exn ~f:(fun x y -> Char.compare x y) (String.to_list l) (String.to_list r)
  |> List.filter ~f:(fun x -> x <> 0)
  |> List.length