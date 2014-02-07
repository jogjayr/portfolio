#!/bin/bash
titlenohyphen=$(echo $1 | sed -e "s/-/\ /g")
echo "haha " $titlenohyphen