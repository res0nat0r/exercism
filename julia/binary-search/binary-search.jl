# Change any of the following NamedTuple values to true to 
# enable testing different bonus tasks
tested_bonus_tasks = (rev = false, by = false, lt = false, multiple_matches = false)

function binarysearch(input, value)
    binsearch(input, value, left, right)
end

function binsearch(input, value, left, right)
    while left <= right
        mid = left + Int(floor(((right - 1) /2)))

        if input[mid] == value
            return mid
        elseif input[mid] < value
            left = mid + 1
        else
            right = mid - 1
        end

    return -1
    end
end
