module UIBook.Widgets.Docs.Icons exposing (..)

import UIBook exposing (chapter, withSections)
import UIBook.ElmCSS exposing (UIChapter)
import UIBook.Widgets.Docs.Helpers exposing (mockTheme)
import UIBook.Widgets.Icons exposing (..)


docs : UIChapter x
docs =
    chapter "Icons"
        |> withSections
            [ ( "Elm (Color)", iconElmColor 20 )
            , ( "Elm", iconElm { size = 20, color = mockTheme } )
            , ( "Github", iconGithub { size = 20, color = mockTheme } )
            , ( "Menu", iconMenu { size = 20, color = mockTheme } )
            , ( "Close", iconClose { size = 20, color = mockTheme } )
            ]
