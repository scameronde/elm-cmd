module Cmd exposing (toCmd)

{-| A utility to wrap messages into a command, so that a message can be returned
by the update function.

@docs toCmd
-}

import Task


{-| Wrap a message into a command.
-}
toCmd : msg -> Cmd msg
toCmd message =
    Task.perform identity (Task.succeed message)
