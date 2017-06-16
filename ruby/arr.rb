#!/usr/bin/ruby
# coding: utf-8
a=1
b="str"
c=[a,b,3,"test"]
d=[a,c,[1,2,3]]

#puts c[0]
#puts c[1]
EOS
puts c[0,3]#要素数

puts c[0..3]#添字数

print `date`
