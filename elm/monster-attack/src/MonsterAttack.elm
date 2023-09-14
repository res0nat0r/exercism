module MonsterAttack exposing (..)


type alias MonsterDamage =
    String


attackWithSword1 : MonsterDamage -> Int -> MonsterDamage
attackWithSword1 monsterDamage strength =
    monsterDamage ++ "Attacked with sword of strength " ++ String.fromInt strength

attackWithClaw1 : MonsterDamage -> Int -> MonsterDamage
attackWithClaw1 monsterDamage strength =
    monsterDamage ++ "Attacked with claw of strength " ++ String.fromInt strength


attack1 : MonsterDamage -> MonsterDamage
attack1 monsterDamage =
    Debug.todo "Implement attack1 function"


attackWithSword2 : Int -> MonsterDamage -> MonsterDamage
attackWithSword2 strength monsterDamage =
    Debug.todo "Implement attackWithSword2 function"


attackWithClaw2 : Int -> MonsterDamage -> MonsterDamage
attackWithClaw2 strength monsterDamage =
    Debug.todo "Implement attackWithClaw2 function"


attack2 : MonsterDamage -> MonsterDamage
attack2 monsterDamage =
    Debug.todo "Implement attack2 function"


attack3 : MonsterDamage -> MonsterDamage
attack3 =
    Debug.todo "Implement attack3 function"
