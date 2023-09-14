module MariosMarvellousLasagna exposing (remainingTimeInMinutes)


remainingTimeInMinutes numberOfLayers numberOfMinutes =
    let
        expectedMinutesInOven =
            40

        preparationTimeInMinutes =
            2 * numberOfLayers
    in
    preparationTimeInMinutes + expectedMinutesInOven - numberOfMinutes
