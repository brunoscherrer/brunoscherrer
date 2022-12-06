#!/usr/bin/bash

#lilypond source.ly
ly musicxml source.ly > int0.xml
python ~/git/EasyABC/xml2abc.py int0.xml -x > int1.abc
sed -i "s/ //g" int1.abc
grep -v "I:line" int1.abc > int2.abc
grep -v "V:1treb" int2.abc > int3.abc
abc2abc int3.abc > dest.abc
abcm2ps dest.abc -O =
rm int?.*

