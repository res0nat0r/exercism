def rotate(text, key):
    alphabet ="abcdefghijklmnopqrstuvwxyz"
    cipher = "nopqrstuvwxyzabcdefghijklm"

    lookup = dict(zip(alphabet, cipher))

    return lookup
