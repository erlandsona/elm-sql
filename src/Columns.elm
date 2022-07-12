module Columns exposing (Columns, from, with)

import Accessors exposing (Lens, name)


type Columns object
    = Columns (Internal object)


type alias Internal object =
    { lens : Lens_ object Never
    , rest : Columns object
    }


from : Lens object anytype reach wrap -> Columns object
from =
    name >> List.singleton >> Columns


{-| TODO: Figure out composition for extensible records.
-}
with : Lens objectA any reach wrap -> Columns (objectA -> objectB) -> Columns objectB
with l (Columns fn) =
    Columns (Internal l a)
