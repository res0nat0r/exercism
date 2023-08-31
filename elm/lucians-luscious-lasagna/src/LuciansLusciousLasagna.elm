module LuciansLusciousLasagna exposing (elapsedTimeInMinutes, expectedMinutesInOven, preparationTimeInMinutes)


expectedMinutesInOven : number
expectedMinutesInOven =
    40


preparationTimeInMinutes : number -> number
preparationTimeInMinutes layers =
    2 * layers


elapsedTimeInMinutes : number -> number -> number
elapsedTimeInMinutes layers minutes_in_oven =
    preparationTimeInMinutes layers + minutes_in_oven
