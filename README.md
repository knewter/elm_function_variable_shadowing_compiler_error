# An [SSCCE](http://sscce.org/) to show off an unpleasant compiler error in Elm

The Elm application in `Main.elm` in this repository will cause the following
error when attempting to compile:

```
$ elm-make Main.elm
elm-make: Could not find `a` when solving type constraints.
elm-make: thread blocked indefinitely in an MVar operation
```

This is ultimately due to the shadowing of `a`.  Obviously I don't actually want
to write code like this, but I ran into it in a real world situation.  This was
the simplest I could make it that still caused the error.
