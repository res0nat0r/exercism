"""
    is_leap_year(year)

Return `true` if `year` is a leap year in the gregorian calendar.

on every year that is evenly divisible by 4
  except every year that is evenly divisible by 100
    unless the year is also evenly divisible by 400
"""
function is_leap_year(year)
    if mod(year, 4) == 0
        if mod(year, 100) == 0
            if mod(year, 400) == 0
                return true
            else
                return false
            end
        else
            return true
        end
    else
        return false
    end
end
