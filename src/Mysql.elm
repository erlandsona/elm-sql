module Mysql exposing
    ( Expr(..)
    , VALUE(..)
    , eval
    )


eval : Expr any -> String
eval x =
    case x of
        SELECT e ->
            "SELECT " ++ eval e ++ ";"

        VALUE v ->
            valueToS v


type Expr f
    = SELECT (Expr f)
    | VALUE VALUE


type VALUE
    = String String
    | Int Int
    | Bool Bool
    | Null


valueToS : VALUE -> String
valueToS v =
    case v of
        String s ->
            "'" ++ s ++ "'"

        Int i ->
            String.fromInt i

        Bool b ->
            if b then
                "1"

            else
                "0"

        Null ->
            "NULL"
