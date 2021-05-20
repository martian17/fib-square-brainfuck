#!/bin/bash

if [ -z ${1+x} ]
    then
    code=$(</dev/stdin)
    else
    code=$(cat $1)
    fi

echo "require(\"@martian17/fuckjs\");
/*
" > temp.js
echo $code >> temp.js
echo "
*/" >> temp.js
node temp.js
rm temp.js
