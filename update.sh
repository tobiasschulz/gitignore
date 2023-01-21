#!/bin/bash

find /Users/tobias/leu* /Users/tobias/github -name ".gitignore" | while read a
do
    grep "IDE-specific directories" "$a" && (
        cp gitignore "$a"
    )
done
