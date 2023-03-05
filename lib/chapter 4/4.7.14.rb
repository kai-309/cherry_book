#ミュータブル（変更可）,イミュータブル(変更不可)＝integer,float,symbol,true,false,nilなど

#[]や<<を使った文字列の操作
a = 'abcde'
a[2] #c
a[1,3] #bcd
a[-1] #e

a[0] = 'x' #'xbcde'
a[1,3] = 'y' #'xye'
a << 'pqr' #'xyepqr'