#!/bin/bash

find /Users/tobias -name ".gitignore" | while read a
do
    grep "IDE-specific directories" "$a" && (
        cp gitignore "$a"
    )
done
