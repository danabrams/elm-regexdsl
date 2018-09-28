module Example exposing (..)

import Expect exposing (Expectation)
import Fuzz exposing (Fuzzer, int, list, string)
import RegexDSL
import Test exposing (..)


suite : Test
suite =
    test "hello!" <|
        \() ->
            RegexDSL.characterClass 'a' 'z'
                |> RegexDSL.toRegex
                |> RegexDSL.toString
                |> Expect.equal "[a-z]"
