# recycle

retrofuturistic way to throw files into a trash can

## usage example

    » touch `jot 5`
    » ls
    1  2  3  4  5
    » recycle 1 2 3
    » ls
    4  5

and now files 1 2 and 3 are safely in ~/.Trash


trashing files this way from the terminal supports `Put Back` functionality in Finder and is much safer than using `rm`.

A pre-built version of the binary can be found in build/Release if you don't want to compile it yourself.


start recycling today :cat:
