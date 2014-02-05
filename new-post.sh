#!/bin/bash
filename=_posts/$(date "+%Y-%m-%d")-$1.md
titlenohyphen=$(echo $1 | sed -e "s/-/\ /g")
touch $filename
echo "---
layout: post
category: links
title: ${titlenohyphen}
teaser: 
tags: 
---" >> $filename