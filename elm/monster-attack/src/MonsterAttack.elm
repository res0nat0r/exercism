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
    let
        one =
            attackWithSword1 monsterDamage 5

        two =
            attackWithClaw1 monsterDamage 1

        three =
            attackWithClaw1 monsterDamage 1

        four =
            attackWithSword1 monsterDamage 5
    in
    one ++ two ++ three ++ four



{-
   sword 5
   claw 1
   claw 1
   sword 5
-}


attackWithSword2 : Int -> MonsterDamage -> MonsterDamage
attackWithSword2 strength monsterDamage =


attackWithClaw2 : Int -> MonsterDamage -> MonsterDamage
attackWithClaw2 strength monsterDamage =


attack2 : MonsterDamage -> MonsterDamage
attack2 monsterDamage =


attack3 : MonsterDamage -> MonsterDamage
attack3 =
