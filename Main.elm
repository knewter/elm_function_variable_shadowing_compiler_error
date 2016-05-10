import Html exposing (div, text)
import Html.App as Html

a = "foo"


type alias Model = { baz : String }


initialModel : Model
initialModel = { baz = "whee" }


type Msg
  = A
  | B


update msg model =
  case msg of
    A ->
      { model | baz = a }
    B ->
      let
        a = "giggity"
      in
        { model | baz = a}


view =
  div [] []


main =
  Html.beginnerProgram
    { model = 0
    , update = update
    , view = view
    }
