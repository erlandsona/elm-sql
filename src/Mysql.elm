module Mysql exposing
    ( select
    , toSql
    , Expr(..), VALUE(..)
    )

{-|


# Builders

@docs select, insert, update, delete, ...

@docs toSql

Types

-}


select =
    Debug.todo "Make this make sense :grimacing:"


toSql : Expr any -> String
toSql x =
    case x of
        SELECT e ->
            "SELECT " ++ toSql e ++ ";"

        VALUE v ->
            valueToSql v


type Expr f
    = SELECT (Expr f)
    | VALUE VALUE


type VALUE
    = String String
    | Int Int
    | Bool Bool
    | Null


valueToSql : VALUE -> String
valueToSql v =
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
