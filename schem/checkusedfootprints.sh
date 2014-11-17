#!/bin/bash
# Check all .sch files for used footprints and verify against local library

# All currently used footprints
USEDFPS=$( grep footprint roomunit/*.sch | awk 'BEGIN{FS="="} {print $2}' | sort | uniq )

# All footprints in local library
ALLFPS=$( find ../pcb/pkg/newlib -name '*.fp' | sed -e 's/.*\/\(.*\)\.fp/\1/' )

#Check for unused footprints
unused=0
for footprint in $ALLFPS; do
    echo $USEDFPS | grep -q $footprint
    if [ $? -ne 0 ]; then
        echo "WARNING: Unused footprint: $footprint"
        let "unused=unused+1"
    fi
done

# Check for footprints missing in local library
missing=0
for footprint in $USEDFPS; do
    echo $ALLFPS | grep -q $footprint
    if [ $? -ne 0 ]; then
        echo "ERROR: Footprint missing from local library: $footprint"
        let "missing=missing+1"
    fi
done

if [ $unused -gt 0 ]; then
    echo "WARNING: found ${unused} unused footprint files"
fi
if [ $missing -gt 0 ]; then
    echo "ERROR: found ${missing} missing footprint files from local library"
    exit 1
fi

exit 0
