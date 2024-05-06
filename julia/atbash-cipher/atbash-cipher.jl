function encode(input::Char)
    plain = "abcdefghijklmnopqrstuvwxyz1234567890"
    cipher = "zyxwvutsrqponmlkjihgfedcba1234567890"
    lookup = Dict(zip(plain, cipher))

    return lookup[input]
end

function encode(input::String)
    clean = filter(x -> isletter(x) || isdigit(x), input) |> lowercase
    encoded = map(encode, clean)
    parts = Iterators.partition(encoded, 5)

    join([join(part) for part in parts], " ")
end


function decode(input::Char)
    plain = "zyxwvutsrqponmlkjihgfedcba1234567890"
    cipher = "abcdefghijklmnopqrstuvwxyz1234567890"
    lookup = Dict(zip(plain, cipher))

    return lookup[input]
end

function decode(input::String)
    clean = filter(x -> isletter(x) || isdigit(x), input) |> lowercase
    encoded = map(encode, clean)
    return encoded
end
