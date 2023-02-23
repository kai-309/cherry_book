# []で文字列の配列を作成
['apple', 'melon', 'orange']   # ["apple", "melon", "orange"]

# %wで文字列の配列を作成(!で囲む場合)
%w!apple melon orange!         # ["apple", "melon", "orange"]

# %wで文字列の配列を作成(丸括弧で囲む場合)
%w(apple melon orange)         # ["apple", "melon", "orange"]

# 空白文字(スペースや改行)が連続した場合も1つの区切り文字としてみなされる
%w(
  apple
  melon
  orange
  )
                              # ["apple", "melon", "orange"]