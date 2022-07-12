"""
The dice game Yacht is from the same family as Poker Dice, Generala and
particularly Yahtzee, of which it is a precursor. In the game, five dice are
rolled and the result can be entered in any of twelve categories. The score of a
throw of the dice depends on category chosen.
"""

# Score categories.
# Change the values as you see fit.
YACHT = lambda yacht: 50 if [5] == [yacht.count(i) for i in set(yacht)] else 0
ONES = lambda dice: dice.count(1) * 1
TWOS = lambda dice: dice.count(2) * 2
THREES = lambda dice: dice.count(3) * 3
FOURS = lambda dice: dice.count(4) * 4
FIVES = lambda dice: dice.count(5) * 5
SIXES = lambda dice: dice.count(6) * 6
FULL_HOUSE = (
    lambda full_house: sum(full_house)
    if [2, 3] == sorted([full_house.count(i) for i in set(full_house)])
    else 0
)
FOUR_OF_A_KIND = lambda four_of_a_kind: sum(
    i * 4 for i in set(four_of_a_kind) if four_of_a_kind.count(i) >= 4
)
LITTLE_STRAIGHT = (
    lambda little_straight: 30 if [1, 2, 3, 4, 5] == sorted(little_straight) else 0
)
BIG_STRAIGHT = lambda big_straight: 30 if [2, 3, 4, 5, 6] == sorted(big_straight) else 0
CHOICE = sum


def score(dice, category):
    """
    Return the dice roll score.

    :param array dice: Numbers rolled
    :param lambda category: Function to apply
    """
    return category(dice)
