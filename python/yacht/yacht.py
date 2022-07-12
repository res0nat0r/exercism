# Score categories.
# Change the values as you see fit.
YACHT = None
ONES = lambda dice: dice.count(1) * 1
TWOS = lambda dice: dice.count(2) * 2
THREES = lambda dice: dice.count(3) * 3
FOURS = lambda dice: dice.count(4) * 4
FIVES = lambda dice: dice.count(5) * 5
SIXES = lambda dice: dice.count(6) * 6
FULL_HOUSE = lambda full_house: sum(full_house) if [2,3]==[full_house.count(i) for i in set(full_house)] else 0
FOUR_OF_A_KIND = None
LITTLE_STRAIGHT = None
BIG_STRAIGHT = None
CHOICE = None


def score(dice, category):
    return category(dice)    