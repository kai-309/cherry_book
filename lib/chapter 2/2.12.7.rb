# Dateクラスは組み込みライブラリではないので、そのまま使用できない
Date.today   # uninitialized constant Date (NameError)

# dateライブラリを読み込むとDateクラスが使えるようになる
require 'date'
Date.today   # #<Date: 2023-01-24 ((2459969j,0s,0n),+0s,2299161j)> 



