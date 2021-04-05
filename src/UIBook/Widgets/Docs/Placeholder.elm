module UIBook.Widgets.Docs.Placeholder exposing (..)

import UIBook exposing (chapter, withSections)
import UIBook.ElmCSS exposing (UIChapter)
import UIBook.Widgets.Placeholder as Placeholder exposing (placeholder)


docs : UIChapter x
docs =
    chapter "Placeholder"
        |> withSections
            [ ( "Default", placeholder )
            , ( "with custom width"
              , Placeholder.custom
                    |> Placeholder.withWidth 500
                    |> Placeholder.view
              )
            , ( "With custom height"
              , Placeholder.custom
                    |> Placeholder.withHeight 80
                    |> Placeholder.view
              )
            , ( "With custom foreground Color"
              , Placeholder.custom
                    |> Placeholder.withColor "#FF0000"
                    |> Placeholder.view
              )
            , ( "With custom background Color"
              , Placeholder.custom
                    |> Placeholder.withColor "#0000FF"
                    |> Placeholder.view
              )
            , ( "With custom cackground and foreground colors"
              , Placeholder.custom
                    |> Placeholder.withColor "#FFF"
                    |> Placeholder.withBackgroundColor "#FF0000"
                    |> Placeholder.view
              )
            ]
