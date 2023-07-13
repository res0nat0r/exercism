function triangle(n)
    pascal = []
    max = 0

    if n < 0
        throw(DomainError("cannot be negative"))
    end

    while max < n
        list = []
        for row = 0:max
            append!(list, (binomial(max, row)))
        end
        push!(pascal, list)
        max += 1
    end
    return pascal
end
