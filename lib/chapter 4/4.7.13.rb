# 要素が5つで'default'をデフォルト値として使う配列を作成する
a = Array.new(5, 'default')
a   # ["default", "default", "default", "default", "default"] 


# 1番目の要素を取得する
str = a[0]
str   # "default" 


# 1番目の要素を大文字に変換する(破壊的変更)
str.upcase!
str   # "DEFAULT" 


# 配列の要素全てが大文字に変わってしまった!
a   # ["DEFAULT", "DEFAULT", "DEFAULT", "DEFAULT", "DEFAULT"] 


# 上記の問題を避けるには、引数ではなくブロックでデフォルト値を渡す
# ブロックを使って、ブロックの戻り値をデフォルト値とする

