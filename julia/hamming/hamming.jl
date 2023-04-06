"Your optional docstring here"
function distance(a, b)
    hamming = 0

    if length(a) != length(b)
        throw(ArgumentError("Invalid length"))
    end

    for i = 1:length(a)
        if a[i] != b[i]
            hamming += 1
        end
    end

    return hamming
end
