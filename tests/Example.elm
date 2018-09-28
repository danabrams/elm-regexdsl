module Example exposing (..)

import Expect exposing (Expectation)
import Fuzz exposing (Fuzzer, int, list, string)
import RegexDSL
import Test exposing (..)


suite : Test
suite =
    describe "stuff"
        [ test "range" <|
            \() ->
                RegexDSL.range 'a' 'z'
                    |> RegexDSL.toRegex
                    |> RegexDSL.toString
                    |> Expect.equal "[a-z]"
        , test "capital range" <|
            \() ->
                RegexDSL.range 'A' 'Z'
                    |> RegexDSL.toRegex
                    |> RegexDSL.toString
                    |> Expect.equal "[A-Z]"
        ]
