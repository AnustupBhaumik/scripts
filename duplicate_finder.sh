#!/bin/bash

find . -type f -exec sha256sum {} \; | sort | awk '
{
    hash=$1
    file=$2

    if (seen[hash]) {
        print "Duplicate:"
        print seen[hash]
        print file
        print ""
    } else {
        seen[hash]=file
    }
}'
