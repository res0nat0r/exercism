"""
Alice and Bob use Diffie-Hellman key exchange to share secrets. They start with
prime numbers, pick private keys, generate and share public keys, and then
generate a shared secret key.
"""

from random import randint


def private_key(p):
    """
    Return the private key

    :param int p: private key
    :return: private key
    """

    return randint(1, p - 1)


def public_key(p, g, private):
    """
    Return the public key

    :param int p: public key
    :param int g: power
    :param int private: private key
    :return: public key
    """

    return pow(g, private) % p


def secret(p, public, private):
    """
    Return the secret key

    :param int p: public key
    :param int public: public key
    :param int private: private key
    :return: secret
    """

    return pow(public, private) % p
