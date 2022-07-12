module Lens exposing (..)

import Accessors exposing (Lens, makeOneToOne_)


age : Lens { record | age : age } transformed age wrap
age =
    makeOneToOne_ ".age" .age (\alter record -> { record | age = record.age |> alter })


id : Lens { record | id : id } transformed id wrap
id =
    makeOneToOne_ ".id" .id (\alter record -> { record | id = record.id |> alter })


name : Lens { record | name : name } transformed name wrap
name =
    makeOneToOne_ ".name" .name (\alter record -> { record | name = record.name |> alter })
