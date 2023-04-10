"""
Introduction
Implement run-length encoding and decoding.

Run-length encoding (RLE) is a simple form of data compression, where runs
(consecutive data elements) are replaced by just one data value and count.

For example we can represent the original 53 characters with only 13.

"WWWWWWWWWWWWBWWWWWWWWWWWWBBBWWWWWWWWWWWWWWWWWWWWWWWWB"  ->  "12WB12W3B24WB"
RLE allows the original data to be perfectly reconstructed from the compressed
data, which makes it a lossless data compression.

"AABCCCDEEEE"  ->  "2AB3CD4E"  ->  "AABCCCDEEEE" For simplicity, you can assume
that the unencoded string will only contain the letters A through Z (either
lower or upper case) and whitespace. This way data to be encoded will never
contain any numbers and numbers inside data to be decoded always represent the
count for the following character.
"""

function encode(s)
    re = r"([\w ])\1*"
    m = eachmatch(re, s)
    encoded = ""

        for i in m
            if length(i.match) == 1
                encoded = encoded * i[1]
            else
            encoded = encoded * (string(length(i.match)) * i[1])
            end
        end
    return encoded
 

end

function decode(s)
    re = r"(\d*)(\D)"
    m = eachmatch(re, s)
    decoded = ""

    for i in m
        if i[1] == ""
            decoded = decoded * i[2]
        else
            decoded = decoded * (i[2]^parse(Int, i[1]))
        end
    end

    return decoded
end
