module ValentinesDay exposing (Activity(..), Approval(..), Cuisine(..), Genre(..), rateActivity)


type Approval
    = Yes
    | No
    | Maybe


type Cuisine
    = Korean
    | Turkish


type Genre
    = Crime
    | Horror
    | Romance
    | Thriller


type Activity
    = BoardGame
    | Chill
    | Movie Genre
    | Restaurant Cuisine


rateActivity : Activity -> Approval
rateActivity activity =
    case activity of
        BoardGame ->
            No

        Chill ->
            No

        Movie Romance ->
            Yes

        Movie _ ->
            No

        Restaurant Korean ->
            Yes

        Restaurant Turkish ->
            Maybe
