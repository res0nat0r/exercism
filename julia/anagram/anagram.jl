import DataStructures

function detect_anagrams(subject, candidates)
    letters = DataStructures.DefaultDict(0)
    results = []

    for letter in subject
        letters[lowercase(letter)] += 1
    end

    for candidate in candidates
        if lowercase(candidate) == lowercase(subject)
            continue
        end

        candidate_letters = DataStructures.DefaultDict(0)

        for letter in candidate
            candidate_letters[lowercase(letter)] += 1
        end

        if letters == candidate_letters
            append!(results, [candidate])
        end
    end

    return results
end
