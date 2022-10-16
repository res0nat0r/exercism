"""
Bob answers 'Sure.' if you ask him a question, such as "How are you?".

He answers 'Whoa, chill out!' if you YELL AT HIM (in all capitals).

He answers 'Calm down, I know what I'm doing!' if you yell a question at him.

He says 'Fine. Be that way!' if you address him without actually saying anything.

He answers 'Whatever.' to anything else.
"""

def response(hey_bob):
    hey_bob = hey_bob.strip()

    # yelling question
    # Calm down, I know what I'm doing!
    if hey_bob.upper() == hey_bob and hey_bob[-1] == '?':
        return "Calm down, I know what I'm doing!"

    # question
    # Sure.
    if hey_bob[-1] == '?':
        return 'Sure.'

    # not saying anything
    # Fine. Be that way!
    if none(c.isalpha() for c in hey_bob):
        return "Fine. Be that way!"

    # yelling
    if hey_bob.upper() == hey_bob():
        return "Whoa, chill out!"

    # anything else
    return "Whatever."