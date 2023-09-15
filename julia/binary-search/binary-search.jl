# Change any of the following NamedTuple values to true to 
# enable testing different bonus tasks
tested_bonus_tasks = (rev = false, by = false, lt = false, multiple_matches = false)


function binarysearch(input, value)
    left = 1
    right = length(input)

    while left <= right
        mid = div((left + right) , 2)

        if input[mid] > value
            right = mid - 1
        elseif input[mid] < value
            left = mid + 1
        else
            return mid
        end
    end
    return 0
end

