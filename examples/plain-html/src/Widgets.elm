module Widgets exposing (..)

import Html exposing (Html, button, input, text)
import Html.Attributes exposing (disabled, placeholder)
import Html.Events exposing (onClick, onInput)
import UIDocs exposing (Docs(..), Msg, logAction, logActionWithString)


buttonDocs : Docs (Html Msg)
buttonDocs =
    DocsWithVariants "Button"
        [ ( "Default", button [ onClick <| logAction "Button / onClick" ] [ text "Button" ] )
        , ( "Disabled", button [ disabled True ] [ text "Button" ] )
        ]


inputDocs : Docs (Html Msg)
inputDocs =
    Docs "Input" <|
        input [ placeholder "Type something", onInput <| logActionWithString "Input" ] []
