module TracksOnTracksOnTracks exposing (..)


newList : List String
newList = []


existingList : List String
existingList = ["Elm","Clojure","Haskell"]


addLanguage : String -> List String -> List String
addLanguage language languages = language :: languages


countLanguages : List String -> Int
countLanguages languages = List.length languages


reverseList : List String -> List String
reverseList languages = List.reverse languages


excitingList : List String -> Bool
excitingList languages = 
    case languages of
        "Elm" :: _ -> True
        _ :: "Elm" :: _ -> True
        _ -> False
        

{-
The first item on the list is Elm.
Or the second item on the list is Elm and the list contains three or less languages.
-}
