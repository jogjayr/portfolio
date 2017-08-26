---
layout: post
category: links
title: Understanding Python Wheels
teaser: 
tags: 
---

This post is just my study notes from reading [PEP-427](https://www.python.org/dev/peps/pep-0427/) which describes the [Wheel](https://wheel.readthedocs.io/) distribution format.

The "Jayraj's understanding" version:

1. A wheel is a zipfile with the extension `.whl`.
2. When you unzip a `.whl` file, you get a directory with a `-dist-info` suffix.
3. The `dist-info` directory has a file named `WHEEL` which tells you things. One of these things is if the package is pure Python (purelib) or contains platform-specific (platlib) files.
4. Unless you're running on [64-bit Red Hat-based platforms](https://stackoverflow.com/a/27882460/635134), in both cases (purelib & platlib) the directory referenced in `dist-info/top-level.txt` goes straight into your `site-packages`. Depending on your `PYTHONPATH` (I'm assuming) this will either be your system's `site-packages` or your virtualenvs
5. There is also a directoy with the suffix `.data`. This contains further sub-directories that can have names such as `data` or `scripts`. As far as I can tell so far, the files in the `scripts` directory go someplace that's on your shell's `PATH`. No idea where `data` goes. The spec is vague about the actual destinations of the things inside `.data`, saying "Move each subtree of distribution-1.0.data/ onto its destination path". From the context, I gather that the meaning of "its destination path" is generally-known to most people reading the doc.
6. `dist-info` contains another file called `RECORD`. When you first unzip the `.whl` it contains a listing of all the files in the distributions and their SHA-256 hashes for verification. After you've moved all the files where they're supposed to go, the `RECORD` file is updated with the new paths of each file.
