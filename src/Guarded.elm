module Guarded exposing (..)

import Json.Decode as Decode exposing (Decoder)
import Json.Encode as Encode exposing (Value)
import Regex


type Guarded i a e
    = Guarded (i -> Result e a) (Decoder i) (i -> Value) (e -> String) (a -> i)


make : (i -> Result e a) -> Decoder i -> (i -> Value) -> (e -> String) -> (a -> i) -> Guarded i a e
make =
    Guarded


build : Guarded i a e -> i -> Result e a
build (Guarded buildFn _ _ _ _) val =
    buildFn val


decoder : Guarded i a e -> Decoder a
decoder (Guarded buildFn decoderI _ errorToStringFn _) =
    decoderI
        |> Decode.andThen
            (\val ->
                case buildFn val of
                    Ok value ->
                        Decode.succeed value

                    Err err ->
                        errorToStringFn err
                            |> Decode.fail
            )


encoder : Guarded i a e -> a -> Value
encoder (Guarded _ _ encoderI _ unboxFn) val =
    unboxFn val
        |> encoderI



-- Helper guard functions for numbers.


type IntError
    = BelowRange
    | AboveRange


intErrorToString : IntError -> String
intErrorToString err =
    case err of
        BelowRange ->
            "Too low."

        AboveRange ->
            "Too high."


gt : Int -> Int -> Result IntError Int
gt bound val =
    if bound <= val then
        Err BelowRange

    else
        Ok val


lt : Int -> Int -> Result IntError Int
lt bound val =
    if bound >= val then
        Err AboveRange

    else
        Ok val



-- Helper guard functions for strings.


type StringError
    = TooShort
    | TooLong
    | NotMatchingRegex


stringErrorToString : StringError -> String
stringErrorToString err =
    case err of
        TooShort ->
            "Too short."

        TooLong ->
            "Too long."

        NotMatchingRegex ->
            "Not matching regex."


minLength : Int -> String -> Result StringError String
minLength bound val =
    if String.length val < bound then
        Err TooShort

    else
        Ok val


maxLength : Int -> String -> Result StringError String
maxLength bound val =
    if String.length val > bound then
        Err TooLong

    else
        Ok val


regexMatch : String -> String -> Result StringError String
regexMatch pattern val =
    let
        regex =
            Regex.fromString pattern
                |> Maybe.withDefault Regex.never
    in
    if Regex.contains regex val then
        Ok val

    else
        Err NotMatchingRegex
