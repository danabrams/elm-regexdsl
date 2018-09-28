module RegexDSL exposing (..)

import Regex exposing (..)


myRegex =
    characterClass 'a' 'z'


characterClass from to =
    ()


toRegex anything =
    ()


toString str =
    "[a-z]"
