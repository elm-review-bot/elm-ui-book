module UIBook.Widgets.Header exposing (view)

import Css exposing (..)
import Html.Styled exposing (..)
import Html.Styled.Attributes exposing (..)
import Html.Styled.Events exposing (..)
import UIBook.Widgets.Helpers exposing (..)
import UIBook.Widgets.Icons exposing (..)


view :
    { color : String
    , href : String
    , title : String
    , subtitle : String
    , custom : Maybe (Html msg)
    , isMenuOpen : Bool
    , onClickMenuButton : msg
    }
    -> Html msg
view props =
    header
        [ css
            [ displayFlex
            , alignItems center
            , justifyContent spaceBetween
            ]
        ]
        [ a
            [ href props.href
            , css
                [ display block
                , textDecoration none
                , color (hex "#000")
                ]
            ]
            [ h1
                [ css
                    [ margin zero
                    , padding zero
                    ]
                ]
                [ case props.custom of
                    Just custom ->
                        custom

                    Nothing ->
                        span
                            [ css
                                [ display block
                                , fontDefault
                                , fontWeight (int 600)
                                , fontSize (px 16)
                                ]
                            ]
                            [ span
                                [ css
                                    [ display block
                                    , paddingRight (px 4)
                                    ]
                                ]
                                [ text props.title
                                ]
                            , span
                                [ css
                                    [ display block
                                    , fontWeight (int 400)
                                    ]
                                ]
                                [ text props.subtitle ]
                            ]
                ]
            ]
        , button
            [ onClick props.onClickMenuButton
            , css
                [ display none
                , fontDefault
                , padding zero
                , margin zero
                , border zero
                , boxShadow none
                , backgroundColor transparent
                , cursor pointer
                , hover [ opacity (num 0.6) ]
                , active [ opacity (num 0.4) ]
                , mobile [ display block ]
                ]
            ]
            [ if props.isMenuOpen then
                iconClose { size = 20, color = "#000" }

              else
                iconMenu { size = 20, color = "#000" }
            ]
        ]
