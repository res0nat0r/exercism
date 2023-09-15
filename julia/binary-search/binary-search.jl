# Change any of the following NamedTuple values to true to 
# enable testing different bonus tasks
tested_bonus_tasks = (rev = false, by = false, lt = false, multiple_matches = false)


function binsearch(input, value, left, right)
    while left <= right
        mid = left + Int(floor(((right - 1) /2)))

        println("mid: ", string(mid))

        if input[mid] == value
            println(string("mid: ", string(mid)))
            return mid
        elseif input[mid] < value
            println(string("left: ", string(left)))
            left = mid + 1
        else
            println(string("right: ", string(right)))
            right = mid - 1
        end

    return -1
    end
end

function binarysearch(input, value)
    binsearch(input, value, 1, length(input))
end
