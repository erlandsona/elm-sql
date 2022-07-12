module User exposing (..)

import Columns exposing (..)
import Lens



-- import Mysql


type alias User =
    { id : Int -- Should upgrade to UUID or UserId
    , name : String
    , age : Int

    -- , email : Email
    -- , address : Address
    }



-- all : Mysql.From User


all : { table : String, columns : Columns User }
all =
    -- Debug.todo """
    -- Shorthand for * except it's the everything tuple...
    -- sorta like
    -- (Lens.id, Lens.name, Lens.age)
    -- """
    { table = "users"
    , columns =
        from { id = 1, name = "", age = 1 }

    -- Columns (Int -> String -> Int -> User)
    -- with Lens.id
    -- |> with Lens.name
    -- |> with Lens.age
    -- [ Lens.id
    -- , Lens.name
    -- , Lens.age
    -- ]
    }
