module User exposing (..)

-- import Accessors exposing (Lens_)
-- import Lens


type alias User =
    { id : Int -- Should upgrade to UUID or UserId
    , name : String
    , age : Int

    -- , email : Email
    -- , address : Address
    }



-- id : Lens_ { m | id : Int } (Mysql Int)
-- id =
--     Mysql.int Lens.id


table : String
table =
    "users"
