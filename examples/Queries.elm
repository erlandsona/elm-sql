module Queries exposing (..)

import Mysql exposing (select)
import User exposing (User)


usersIndex : Mysql.Expr User
usersIndex =
    select User.all
        { where_ | id = 1 }


where_ =
    { id = 0 }
