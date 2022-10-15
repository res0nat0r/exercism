"""
Determine if a string is a pangram
"""


def is_pangram(sentence):
    """Strip non alpha characters and determine if sentence is a pangram

    :param sentence: string - Sentence to evaluate.
    :return: bool
    """

    alphabet = [chr(letter) for letter in range(ord("a"), ord("z") + 1)]

    sentence = "".join(c for c in sentence if c.isalpha()).lower()

    return all(letter in sentence for letter in alphabet)
