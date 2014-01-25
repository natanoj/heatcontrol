#!/bin/bash
# Check all .sch files for used symbol files and verify against local library

# All currently used symbols
USEDSYMS=$( grep '\.sym' `find . -name '*.sch'` | sed -e 's/.* \(.*\)$/\1/' | sort -u )

# All symbols in local library
ALLSYMS=`find sym -name '*.sym' | sed -e 's/.*\///'`

# Check for unused symbols
unused=0
for symbol in $ALLSYMS; do
    echo $USEDSYMS | grep -q $symbol
    if [ $? -ne 0 ]; then
        echo "WARNING: Unused symbol: $symbol"
        let "unused=unused+1"
    fi
done

# Check for symbols missing in local library
missing=0
for symbol in $USEDSYMS; do
    echo $ALLSYMS | grep -q $symbol
    if [ $? -ne 0 ]; then
        echo "ERROR: Symbol missing from local library: $symbol"
        let "missing=missing+1"
    fi
done

if [ $unused -gt 0 ]; then
    echo "WARNING: found ${unused} unused symbol files"
fi
if [ $missing -gt 0 ]; then
    echo "ERROR: found ${missing} missing symbol files from local library"
    exit 1
fi

exit 0
