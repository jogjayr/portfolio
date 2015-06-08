#!/bin/bash
if test $1 = '--publish'; then
	pubfilename=$2
	newfilename=_posts/$(date "+%Y-%m-%d")-$pubfilename
	mv _drafts/$pubfilename $newfilename
	echo 'Published: ' $newfilename
else
	filename="_drafts/$1.md"
	titlenohyphen=$(echo $1 | sed -e "s/-/\ /g")
	touch $filename
	echo "---
layout: post
category: links
title: ${titlenohyphen}
teaser: 
tags: 
---" >> $filename
	echo 'Created: ' $filename
	sublime $filename
fi