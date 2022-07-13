module Queries exposing (..)

import Mysql as SQL exposing (SelectExpr)
import User exposing (User)


{-| Applicative Version

    usersIndex : Mysql.Expr
    usersIndex =
        SQL.select User
            |> SQL.as User.id
            |> SQL.as User.name
            |> SQL.as User.age
            --
            |> SQL.from User.table
            |> SQL.where User.id (Mysql.eq 1)

-}
usersIndex : SelectExpr
usersIndex =
    -- SQL.select3 User
    --     User.id
    --     User.name
    --     User.age
    --     |> SQL.from User.table
    --     |> SQL.where User.id (Mysql.eq 1)
    Debug.todo "WRITEME"
