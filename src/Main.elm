module Main exposing (..)

import Html exposing (Html, text, div)
import View.Peg


---- MODEL ----


type alias Model =
    {}


init : ( Model, Cmd Msg )
init =
    ( {}, Cmd.none )



---- UPDATE ----


type Msg
    = NoOp


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    ( model, Cmd.none )



---- VIEW ----

color =
    { hat = "#f0a210"
    , stem = "#f0a210"
    , self_shadow = "#e2970b"
    , cast_shadow = "#b94b47"
    , highlight = "#FFF"
    }


view : Model -> Html Msg
view model =
    div []
        [ View.Peg.top color
        ,  View.Peg.sideways color
        ]



---- PROGRAM ----


main : Program Never Model Msg
main =
    Html.program
        { view = view
        , init = init
        , update = update
        , subscriptions = always Sub.none
        }
