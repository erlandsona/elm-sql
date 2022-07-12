module Mysql_Spec exposing (spec)

import Expect exposing (Expectation)
import Fuzz exposing (Fuzzer)
import Mysql exposing (..)
import Test exposing (Test, describe, test)


eq : String -> Expr any -> Expectation
eq str sql =
    Mysql.toSql sql
        |> eq_ str


eq_ : a -> a -> Expectation
eq_ =
    Expect.equal


spec : Test
spec =
    describe "toSql"
        [ select_specs
        ]


select_specs : Test
select_specs =
    describe "SELECT"
        [ test "Bool" <|
            \() ->
                [ SELECT (VALUE (Bool True))
                , SELECT (VALUE (Bool False))
                ]
                    |> List.map toSql
                    |> eq_ [ "SELECT 1;", "SELECT 0;" ]
        , test "String" <|
            \() ->
                SELECT (VALUE (String "Stuff"))
                    |> eq "SELECT 'Stuff';"
        , test "Int" <|
            \() ->
                SELECT (VALUE (Int 999))
                    |> eq "SELECT 999;"
        , test "Null" <|
            \() ->
                SELECT (VALUE Null)
                    |> eq "SELECT NULL;"
        ]
