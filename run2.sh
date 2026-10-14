#!/bin/bash
tool=dot
for a in *.dot; do
    echo "traitement du fichier $a"
    a2="${a%.*}"
    if grep -q "pos=" "$a"; then
        neato -Tsvg "$a" > "$a2.svg"
    else
        $tool -Tsvg "$a" > "$a2.svg"
    fi
done
