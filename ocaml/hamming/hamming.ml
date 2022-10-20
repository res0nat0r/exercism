(*
Calculate the Hamming Distance between two DNA strands.

We read DNA using the letters C,A,G and T. Two strands might look like this:

GAGCCTACTAACGGGAT
CATCGTAATGACGGCCT
^ ^ ^  ^ ^    ^^

They have 7 differences, and therefore the Hamming Distance is 7.
*)

open Base

type nucleotide = A | C | G | T

let distance d = 
  match d with 
  | (A, A) | (C, C) | (G, G) | (T, T) -> 0
  | _ -> 1

let hamming_distance l r = match (l, r) with
  | ([], []) -> Ok 0
  | ([], _) -> Error "left strand must not be empty"
  | (_, []) -> Error "right strand must not be empty"
  | (x, y) when List.length x <> List.length y -> Error "left and right strands must be of equal length"
  | (x,y)  -> Ok (List.zip_exn x y |> List.map ~f:distance |> List.reduce_exn ~f:(+))

(* let rec list_max l =
  match l with
  | [] -> None
  | h :: t -> begin
    match list_max t with
    | None -> Some h
    | Some m -> Some (max h m)
  end *)



  (*  let s = List.zip_exn ~f:distance |> List.reduce ~f:(+) function *)