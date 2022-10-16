def response(hey_bob):
    hey_bob = hey_bob.strip()

    if any(c.isalpha() for c in hey_bob):
        return "Fine. Be that way!" 

    if hey_bob[-1] == '?':
        return "Sure."

    if hey_bob.upper() == hey_bob:
        return "Whoa, chill out!"

    if hey_bob.upper() == hey_bob and hey_bob[-1] == '?':
        return "Calm down, I know what I'm doing!"

    return "Whatever."