open Base

type nucleotide = A | C | G | T

let dna_of_string s =
  let f = function
    | 'A' -> A
    | 'C' -> C
    | 'G' -> G
    | 'T' -> T
    | _ -> failwith "Big news! New nucleotide discovered"
  in
  String.to_list s |> List.map ~f

let hamming_distance l r =
  List.map2_exn ~f:(fun x y -> Char.compare x y) (String.to_list l) (String.to_list r)
  |> List.filter ~f:(fun x -> x <> 0)
  |> List.length