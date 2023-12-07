def rotate(text, key):
    alphabet ="abcdefghijklmnopqrstuvwxyz"
    cipher = "nopqrstuvwxyzabcdefghijklm"

    lookup = dict(zip(alphabet, cipher))

    return lookup

"""
ROT5 omg gives trl
ROT0 c gives c
ROT26 Cool gives Cool
ROT13 The quick brown fox jumps over the lazy dog. gives Gur dhvpx oebja sbk whzcf bire gur ynml qbt.
ROT13 Gur dhvpx oebja sbk whzcf bire gur ynml qbt. gives The quick brown fox jumps over the lazy dog.
"""