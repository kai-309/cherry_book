# 修正前
['ruby', 'java', 'python'].map { |s| s.upcase }   # ["RUBY", "JAVA", "PYTHON"]
# 修正後
['ruby', 'java', 'python'].map(&:upcase)          # ["RUBY", "JAVA", "PYTHON"]


# 修正前
[1, 2, 3, 4, 5, 6].select { |n| n.odd? }   # [1, 3, 5]
# 修正後
[1, 2, 3, 4, 5, 6].select(&:odd?)          # [1, 3, 5]


# map、selectメソッドにブロックを渡す代わりに、&:メソッド名という引数を渡す
# この書き方は次の条件下で使うことができる
# ①ブロックパラメータが1個だけである
# ②ブロックの中で呼び出すメソッドには引数がない
# ③ブロックの中では、ブロックパラメータに対してメソッドを1回呼び出す以外の処理がない
['ruby', 'java', 'python'].map { |s| s.upcase }


# 以下のコードでは&:メソッド名の書き方に変換することはできない

# ブロックの中でメソッドではなく演算子を使っている
[1, 2, 3, 4, 5, 6].select { |n| n % 3 == 0 }

# ブロック内のメソッドで引数を渡している
[9, 10, 11, 12].map { |n| n.to_s(16) }

# ブロックの中で複数の文を実行している
[1, 2, 3, 4].map do |n|
  m = n * 4
  m.to_s
end



