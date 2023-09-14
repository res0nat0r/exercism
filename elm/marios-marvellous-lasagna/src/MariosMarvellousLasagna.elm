module MariosMarvellousLasagna exposing (remainingTimeInMinutes)


remainingTimeInMinutes : Int -> Int -> Int
remainingTimeInMinutes numberOfLayers numberOfMinutes =
    let
        expectedMinutesInOven : Int
        expectedMinutesInOven =
            40

        preparationTimeInMinutes : Int
        preparationTimeInMinutes =
            2 * numberOfLayers
    in
    preparationTimeInMinutes + expectedMinutesInOven - numberOfMinutes
