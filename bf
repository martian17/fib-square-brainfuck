#!/bin/bash

echo "require(\"@martian17/fuckjs\");
/*
" > temp.js
cat $1 >> temp.js
echo "
*/" >> temp.js
node temp.js
rm temp.js
